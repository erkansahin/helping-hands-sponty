part of 'location_cubit.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState({
    required LocationModel exactLocation,
    required PermissionStateUnion locationPermissionStatus,
    required bool isLocationServicesEnabled,
    required bool isLocationUpdateInProgress,
  }) = _LocationState;
  const LocationState._();

  factory LocationState.initial() => LocationState(
        exactLocation: LocationModel.empty(),
        locationPermissionStatus: const PermissionStateUnion.undetermined(),
        isLocationServicesEnabled: false,
        isLocationUpdateInProgress: false,
      );
  bool get shouldOpenAppSettings =>
      locationPermissionStatus ==
      const PermissionStateUnion.permanentlyDenied();
  bool get shouldRequestLocationPermission =>
      locationPermissionStatus !=
          const PermissionStateUnion.permanentlyDenied() &&
      !isLocationPermissionGranted;

  bool get isLocationPermissionAndServicesAvailable =>
      isLocationServicesEnabled && isLocationPermissionGranted;
  bool get shouldOpenLocationSettings =>
      isLocationPermissionGranted && !isLocationServicesEnabled;
  bool get isLocationPermissionGranted =>
      locationPermissionStatus == const PermissionStateUnion.granted();

  bool get isExactLocationAvailable => exactLocation != LocationModel.empty();
}
