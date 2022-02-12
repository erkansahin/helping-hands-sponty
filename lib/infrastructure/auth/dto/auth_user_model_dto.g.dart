// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_user_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthUserModelDto _$$_AuthUserModelDtoFromJson(Map<String, dynamic> json) =>
    _$_AuthUserModelDto(
      id: json['id'] as String,
      name: json['name'] as String,
      phoneNumber: json['phoneNumber'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      emergencyContactNumber: json['emergencyContactNumber'] as String,
      bloodType: json['bloodType'] as String,
    );

Map<String, dynamic> _$$_AuthUserModelDtoToJson(_$_AuthUserModelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phoneNumber': instance.phoneNumber,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'emergencyContactNumber': instance.emergencyContactNumber,
      'bloodType': instance.bloodType,
    };
