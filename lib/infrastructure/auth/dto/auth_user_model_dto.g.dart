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
      dangerDescription: json['dangerDescription'] as String,
      emergencyContactName: json['emergencyContactName'] as String,
      isInDanger: json['isInDanger'] as bool,
      inDangerDate: sendDateTimeFromJson(json['inDangerDate']),
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
      'dangerDescription': instance.dangerDescription,
      'emergencyContactName': instance.emergencyContactName,
      'isInDanger': instance.isInDanger,
      'inDangerDate': sendDateTimeToJson(instance.inDangerDate),
    };
