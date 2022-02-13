import 'dart:async';

import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../domain/permission/i_permission_handler.dart';

@Injectable(as: IPermissionHandler)
class PermissionHandlerRepository implements IPermissionHandler {
  @override
  Future<PermissionStateUnion> checkLocationPermission() async {
    final PermissionStateUnion permissionUnion =
        _mapPermissionStatusToStateUnion(
      status: await Permission.location.status,
    );

    return permissionUnion;
  }

  @override
  Future<PermissionStateUnion> requestLocationPermission() async {
    final PermissionStateUnion requestedPermission =
        _mapPermissionStatusToStateUnion(
      status: await Permission.location.request(),
    );
    return requestedPermission;
  }

  PermissionStateUnion _mapPermissionStatusToStateUnion(
      {required PermissionStatus status}) {
    PermissionStateUnion permissionStateUnion;
    if (status == PermissionStatus.denied) {
      permissionStateUnion = const PermissionStateUnion.denied();
    } else if (status == PermissionStatus.granted) {
      permissionStateUnion = const PermissionStateUnion.granted();
    } else if (status == PermissionStatus.permanentlyDenied) {
      permissionStateUnion = const PermissionStateUnion.permanentlyDenied();
    } else if (status == PermissionStatus.restricted) {
      permissionStateUnion = const PermissionStateUnion.restricted();
    } else {
      permissionStateUnion = const PermissionStateUnion.undetermined();
    }
    return permissionStateUnion;
  }
}
