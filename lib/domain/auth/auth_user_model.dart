import 'package:freezed_annotation/freezed_annotation.dart';

import 'blood_type.dart';

part 'auth_user_model.freezed.dart';

@freezed
class AuthUserModel with _$AuthUserModel {
  const factory AuthUserModel({
    required String id,
    required String phoneNumber,
    required String name,
    required double latitude,
    required double longitude,
    required String emergencyContactNumber,
    required BloodType bloodType,
    required bool isInDanger,
    required String dangerDescription,
    required String emergencyContactName,
    required DateTime inDangerDate,
  }) = _AuthUserModel;

  const AuthUserModel._();

  factory AuthUserModel.empty() => AuthUserModel(
        id: '',
        phoneNumber: '',
        emergencyContactNumber: '',
        latitude: 0,
        longitude: 0,
        name: '',
        bloodType: BloodType.unknown,
        dangerDescription: '',
        isInDanger: false,
        emergencyContactName: '',
        inDangerDate: DateTime.fromMillisecondsSinceEpoch(0),
      );
}
