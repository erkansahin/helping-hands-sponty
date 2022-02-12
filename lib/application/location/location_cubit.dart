import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helping_hands_sponty/domain/auth/i_auth_service.dart';
import 'package:helping_hands_sponty/domain/geolocator/location_model.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

import '../../domain/geolocator/i_geolocator.dart';
import '../../domain/permission/i_permission_handler.dart';
import '../../injection.dart';
import '../app_life_cycle/app_life_cycle_cubit.dart';
import '../permission/permission_cubit.dart';

part 'location_cubit.freezed.dart';
part 'location_state.dart';

@lazySingleton
class LocationCubit extends Cubit<LocationState> {
  StreamSubscription<AppLifeCycleState>? _applifecycleListenerSubscription;
  StreamSubscription<PermissionState>? _permissionStateSubscription;
  StreamSubscription<Iterable<LocationModel>>? _exactLocationSubscription;
  final PermissionCubit _permissionCubit;
  final AppLifeCycleCubit _appLifeCycleCubit;
  StreamSubscription<LocationModel>? _geolocatorSubscription;
  final IGeolocator _geolocator;
  StreamSubscription<bool>? _locationServicesSubscription;
  final IAuthService _authFacade;

  LocationCubit(this._permissionCubit, this._appLifeCycleCubit,
      this._geolocator, this._authFacade)
      : super(LocationState.initial()) {
    _applifecycleListenerSubscription =
        _appLifeCycleCubit.stream.listen(_appLifeCycleListener);

    _permissionStateSubscription =
        _permissionCubit.stream.listen(_permissionListener);
    _exactLocationSubscription = stream
        .map((event) => event.exactLocation)
        .startWith(state.exactLocation)
        .pairwise()
        .listen(
      (Iterable<LocationModel> pair) async {
        final previous = pair.first;
        final current = pair.last;
        if (previous != current &&
            previous == LocationModel.empty() &&
            !state.isLocationUpdateInProgress) {
          emit(state.copyWith(isLocationUpdateInProgress: true));

          await _authFacade.updateUserLocation(location: state.exactLocation);

          emit(state.copyWith(isLocationUpdateInProgress: false));
        }
      },
    );
    emit(
      state.copyWith(
        locationPermissionStatus:
            _permissionCubit.state.locationPermissionStatus,
      ),
    );

    if (_permissionCubit.state.isLocationServicesEnabled) {
      emit(
        state.copyWith(
            isLocationServicesEnabled:
                _permissionCubit.state.isLocationServicesEnabled),
      );

      _startLocationSubscriptionIfPossible();
    }
  }

  @override
  Future<void> close() {
    _locationServicesSubscription?.cancel();
    _exactLocationSubscription?.cancel();
    _geolocatorSubscription?.cancel();
    _permissionStateSubscription?.cancel();
    _applifecycleListenerSubscription?.cancel();
    return super.close();
  }

  ///Calculates the distance between [loc1] and [loc2] in Meters.
  static double getDistance({
    required LocationModel loc1,
    required LocationModel loc2,
  }) {
    final double distance =
        getIt<IGeolocator>().getDistance(loc1: loc1, loc2: loc2);

    return distance;
  }

  ///Request the user Location Permission using the Native OS dialog.
  Future<PermissionStateUnion> requestLocationPermission() {
    return _permissionCubit.requestLocationPermission();
  }

  ///Take the user to the App Settings page in their OS settings.
  Future<void> openAppSettings() async {
    await _geolocator.openAppSettings();
  }

  ///When app is in the foreground and permission conditions are met, start getting Location data.
  ///When app is in the background, stop getting location.
  Future<void> _appLifeCycleListener(AppLifeCycleState s) async {
    if (s.isResumed) {
      await _startLocationSubscriptionIfPossible();
    } else {
      await _geolocatorSubscription?.cancel();
    }
  }

  ///Emit our state with the up to date Location Permision State in [s].
  Future<void> _permissionListener(PermissionState s) async {
    if (s.locationPermissionStatus != state.locationPermissionStatus ||
        state.isLocationServicesEnabled != s.isLocationServicesEnabled) {
      emit(state.copyWith(
          locationPermissionStatus: s.locationPermissionStatus,
          isLocationServicesEnabled: s.isLocationServicesEnabled));
      await _startLocationSubscriptionIfPossible();
      if (!state.isLocationServicesEnabled) {
        await _geolocatorSubscription?.cancel();
      }
    }
  }

  ///If user granted location permission and enabled location services, we can start listening to the Position Stream.
  Future<void> _startLocationSubscriptionIfPossible() async {
    final bool isAppResumed = _appLifeCycleCubit.state.isResumed;

    if (state.isLocationPermissionAndServicesAvailable && isAppResumed) {
      await _geolocatorSubscription?.cancel();
      _geolocatorSubscription = _geolocator.positionStream
          .listen((LocationModel deviceLocation) async {
        if (!state.isLocationUpdateInProgress) {
          await _authFacade.updateUserLocation(
            location: deviceLocation,
          );
        }
        emit(state.copyWith(exactLocation: deviceLocation));
      });
    }
  }
}
