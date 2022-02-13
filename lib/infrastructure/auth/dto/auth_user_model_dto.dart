import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helping_hands_sponty/domain/auth/blood_type.dart';

import '../../../domain/auth/auth_user_model.dart';

import '../../core/json_converters.dart';
import 'location_model_dto.dart';


part 'auth_user_model_dto.freezed.dart';
part 'auth_user_model_dto.g.dart';

//Help/Unhelp
//Help model
// help collection

@freezed
class AuthUserModelDto with _$AuthUserModelDto {
  factory AuthUserModelDto({
    required String id,
    required String name,
    required String phoneNumber,
    required double latitude,
    required double longitude,
    required String emergencyContactNumber,
    required String bloodType,
    required String dangerDescription,
    required String emergencyContactName,
    required bool isInDanger,
    @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
        required DateTime inDangerDate,
  }) = _AuthUserModelDto;

  factory AuthUserModelDto.empty() =>
      AuthUserModelDto.fromDomain(AuthUserModel.empty());

  factory AuthUserModelDto.fromDomain(AuthUserModel userModel) {
    return AuthUserModelDto(
      id: userModel.id,
      name: userModel.name,
      phoneNumber: userModel.phoneNumber,
      latitude: userModel.latitude,
      longitude: userModel.longitude,
      emergencyContactNumber: userModel.emergencyContactNumber,
      bloodType: userModel.bloodType.name,
      dangerDescription: userModel.dangerDescription,
      emergencyContactName: userModel.emergencyContactName,
      isInDanger: userModel.isInDanger,
      inDangerDate: userModel.inDangerDate,
    );
  }

  factory AuthUserModelDto.fromJson(Map<String, dynamic> json) =>
      _$AuthUserModelDtoFromJson(json);

  factory AuthUserModelDto.fromFirestore(DocumentSnapshot doc) {
    final Map<String, dynamic> docdata = doc.data() as Map<String, dynamic>? ??
        AuthUserModelDto.empty().toJson();

    return AuthUserModelDto.fromJson(docdata);
  }
}

extension AuthUserModelDtoX on AuthUserModelDto {
  AuthUserModel toDomain() {
    return AuthUserModel(
      id: id,
      phoneNumber: phoneNumber,
      name: name,
      longitude: longitude,
      latitude: latitude,
      emergencyContactNumber: emergencyContactNumber,
      bloodType:
          BloodType.values.firstWhere((element) => element.name == bloodType),
      dangerDescription: dangerDescription,
      emergencyContactName: emergencyContactName,
      isInDanger: isInDanger,
      inDangerDate: inDangerDate,
    );
  }
}
