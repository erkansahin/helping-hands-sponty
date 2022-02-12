part of 'permission_cubit.dart';

@freezed
class PermissionState with _$PermissionState {
  const factory PermissionState({
    required PermissionStateUnion locationPermissionStatus,
    required bool isLocationServicesEnabled,
  }) = _PermissionState;
  const PermissionState._();

  factory PermissionState.initial() => const PermissionState(
        locationPermissionStatus: PermissionStateUnion.undetermined(),
        isLocationServicesEnabled: false,
      );

  bool get isLocationRequestable =>
      locationPermissionStatus == const PermissionStateUnion.undetermined() ||
      (Platform.isAndroid &&
          locationPermissionStatus == const PermissionStateUnion.denied());

  bool get isLocationPermanentlyDenied => Platform.isIOS
      ? locationPermissionStatus == const PermissionStateUnion.denied()
      : locationPermissionStatus ==
          const PermissionStateUnion.permanentlyDenied();
}
