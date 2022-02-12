import 'package:freezed_annotation/freezed_annotation.dart';
part 'i_permission_handler.freezed.dart';

abstract class IPermissionHandler {
  Future<PermissionStateUnion> checkLocationPermission();
  Future<PermissionStateUnion> requestLocationPermission();
}

@freezed
class PermissionStateUnion with _$PermissionStateUnion {
  const factory PermissionStateUnion.denied() = Denied;
  const factory PermissionStateUnion.undetermined() = Undetermined;
  const factory PermissionStateUnion.restricted() = Restricted;
  const factory PermissionStateUnion.granted() = Granted;
  const factory PermissionStateUnion.permanentlyDenied() = PermanentlyDenied;
}
