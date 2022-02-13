import 'location_model.dart';

abstract class IGeolocator {
  Stream<bool> get locationServicesStream;
  Future<void> openAppSettings();
  Future<bool> isLocationPermissionGranted();
  Future<bool> isLocationServicesEnabled();
  Future<LocationModel> getLocationFromIP();
  Future<bool> openLocationSettings();
  Stream<LocationModel> get positionStream;

  //Returns the distance in meters.
  double getDistance({
    required LocationModel loc1,
    required LocationModel loc2,
  });
}
