// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'help_model_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HelpModelDto _$$_HelpModelDtoFromJson(Map<String, dynamic> json) =>
    _$_HelpModelDto(
      fromUser:
          AuthUserModelDto.fromJson(json['fromUser'] as Map<String, dynamic>),
      toUser: AuthUserModelDto.fromJson(json['toUser'] as Map<String, dynamic>),
      helpDate: sendDateTimeFromJson(json['helpDate']),
    );

Map<String, dynamic> _$$_HelpModelDtoToJson(_$_HelpModelDto instance) =>
    <String, dynamic>{
      'fromUser': instance.fromUser.toJson(),
      'toUser': instance.toUser.toJson(),
      'helpDate': sendDateTimeToJson(instance.helpDate),
    };
