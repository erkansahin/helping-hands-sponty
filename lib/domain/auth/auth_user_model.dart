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
  }) = _AuthUserModel;

  const AuthUserModel._();

  factory AuthUserModel.empty() => const AuthUserModel(
        id: '',
        phoneNumber: '',
        emergencyContactNumber: '',
        latitude: 0,
        longitude: 0,
        name: '',
        bloodType: BloodType.unknown,
      );
}
