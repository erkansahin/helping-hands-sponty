import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/geolocator/i_geolocator.dart';
import '../../domain/permission/i_permission_handler.dart';
import '../../injection.dart';
import '../app_life_cycle/app_life_cycle_cubit.dart';
import '../location/location_cubit.dart';

part 'permission_cubit.freezed.dart';
part 'permission_state.dart';

@lazySingleton
class PermissionCubit extends Cubit<PermissionState> {
  final IPermissionHandler _permissionHandler;
  final IGeolocator _geolocator;
  StreamSubscription<AppLifeCycleState>? _appLifeCycleStateSubscription;
  StreamSubscription<bool>? _locationServicesSubscription;
  PermissionCubit(this._permissionHandler, this._geolocator)
      : super(PermissionState.initial()) {
    _appLifeCycleStateSubscription =
        getIt<AppLifeCycleCubit>().stream.listen(appLifeCycleListener);
    checkLocationPermission();
    _geolocator
        .isLocationServicesEnabled()
        .then((bool _isLocationServicesEnabled) {
      emit(
        state.copyWith(isLocationServicesEnabled: _isLocationServicesEnabled),
      );
      _locationServicesSubscription =
          _geolocator.locationServicesStream.listen(_locationServicesListener);
    });
  }

  @override
  Future<void> close() async {
    await _appLifeCycleStateSubscription?.cancel();
    await _locationServicesSubscription?.cancel();
    super.close();
  }

  /// If the new state of applifecycle [s] is resumed, update the permissions in the state.
  Future<void> appLifeCycleListener(AppLifeCycleState s) async {
    if (s.isResumed) {
      await checkLocationPermission();
    }
  }

  /// Checks the up to date permission status of [permissionType] and updates the state.
  Future<void> checkLocationPermission() async {
    final PermissionStateUnion status =
        await _permissionHandler.checkLocationPermission();

    emit(state.copyWith(locationPermissionStatus: status));
  }

  Future<PermissionStateUnion> requestLocationPermission() async {
    final PermissionStateUnion status =
        await _permissionHandler.requestLocationPermission();

    emit(state.copyWith(locationPermissionStatus: status));
    return status;
  }

  ///This listener only checks the [isLocationServicesEnabled] bool. Also this listener supports Android users changing LocationServices from Status Bar.
  Future<void> _locationServicesListener(bool isLocationServicesEnabled) async {
    emit(
      state.copyWith(isLocationServicesEnabled: isLocationServicesEnabled),
    );
  }

  Future<void> handleLocationPermissionAndServices() async {
    final LocationCubit _locationCubit = getIt<LocationCubit>();

    if (_locationCubit.state.shouldRequestLocationPermission) {
      //Check for permanently denied here as extra for
      //settings. Also check if services are enabled or
      //not and go to app settings or location settings.
      final PermissionStateUnion locationPermission =
          await requestLocationPermission();

      if (locationPermission ==
              const PermissionStateUnion.permanentlyDenied() &&
          Platform.isAndroid) {
        openAppSettings();
      }
    } else if (state.locationPermissionStatus ==
        const PermissionStateUnion.permanentlyDenied()) {
      openAppSettings();
    } else if (!state.isLocationServicesEnabled) {
      await _geolocator.openLocationSettings();
    }
  }

  ///Take the user to the Location Services Settings page in their OS settings.
  Future<void> openLocationSettings() async {
    await _geolocator.openLocationSettings();
  }

  /// The method opens app settings for user to change his permission settings.
  /// Warning: For some reason the method from permission handler throws an exception and it does not work.
  Future<void> openAppSettings() async {
    //Check if this method works properly after null safety.
    await _geolocator.openAppSettings();
  }
}
