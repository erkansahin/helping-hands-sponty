import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:helping_hands_sponty/domain/geolocator/location_model.dart';

part 'location_model_dto.freezed.dart';
part 'location_model_dto.g.dart';

@freezed
class LocationModelDto with _$LocationModelDto {
  factory LocationModelDto({
    required double latitude,
    required double longitude,
  }) = _LocationModelDto;

  factory LocationModelDto.fromDomain(LocationModel locationModel) {
    return LocationModelDto(
        latitude: locationModel.latitude, longitude: locationModel.longitude);
  }

  factory LocationModelDto.fromJson(Map<String, dynamic> json) =>
      _$LocationModelDtoFromJson(json);
}

extension LocationModelDtoX on LocationModelDto {
  LocationModel toDomain() {
    return LocationModel(latitude: latitude, longitude: longitude);
  }
}
