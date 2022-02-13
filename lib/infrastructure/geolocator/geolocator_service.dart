import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:get_ip_address/get_ip_address.dart';
import 'package:http/http.dart' as http;
import 'package:geolocator/geolocator.dart';
import 'package:helping_hands_sponty/domain/geolocator/i_geolocator.dart';
import 'package:helping_hands_sponty/domain/geolocator/location_model.dart';
import 'package:injectable/injectable.dart';

import '../core/private.dart';

@LazySingleton(as: IGeolocator)
class GeoLocatorService implements IGeolocator {
  @override
  Future<bool> openLocationSettings() async {
    return Geolocator.openLocationSettings();
  }

  @override
  Stream<LocationModel> get positionStream {
    return Geolocator.getPositionStream(
      locationSettings: const LocationSettings(
        accuracy: LocationAccuracy.high,
        timeLimit: Duration(seconds: 120),
        distanceFilter: 1000,
      ),
    ).map((Position position) {
      return LocationModel(
          latitude: position.latitude, longitude: position.longitude);
    });
  }

  ///Returns the distance in meters.
  @override
  double getDistance({
    required LocationModel loc1,
    required LocationModel loc2,
  }) {
    return Geolocator.distanceBetween(
        loc1.latitude, loc1.longitude, loc2.latitude, loc2.longitude);
  }

  @override
  Stream<bool> get locationServicesStream {
    return Geolocator.getServiceStatusStream()
        .map((serviceStatus) => serviceStatus == ServiceStatus.enabled);
  }

  @override
  Future<bool> isLocationPermissionGranted() async {
    final LocationPermission locationPermission =
        await Geolocator.checkPermission();
    return locationPermission == LocationPermission.always ||
        locationPermission == LocationPermission.whileInUse;
  }

  @override
  Future<bool> isLocationServicesEnabled() {
    return Geolocator.isLocationServiceEnabled();
  }

  @override
  Future<void> openAppSettings() {
    return Geolocator.openAppSettings();
  }

  @override
  Future<LocationModel> getLocationFromIP() async {
    try {
      final response = await http.get(
        Uri.parse(
            "https://api.ipgeolocation.io/ipgeo?apiKey=$ipgeolocationKey"),
      );

      final body = jsonDecode(response.body);

      final double lat = double.parse(body["latitude"]);
      final double lon = double.parse(body["longitude"]);

      return LocationModel(latitude: lat, longitude: lon);
    } catch (e) {
      log("getLocationFromIP error $e");
      return LocationModel.empty();
    }
  }
}
