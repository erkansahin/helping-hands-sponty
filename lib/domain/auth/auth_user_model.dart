import 'package:freezed_annotation/freezed_annotation.dart';

import 'blood_type.dart';
import 'location_model.dart';

part 'auth_user_model.freezed.dart';

@freezed
class AuthUserModel with _$AuthUserModel {
  const factory AuthUserModel({
    required String id,
    required String phoneNumber,
    required String name,
    required LocationModel location,
    required String emergencyContactNumber,
    required BloodType bloodType,
  }) = _AuthUserModel;

  const AuthUserModel._();

  factory AuthUserModel.empty() => AuthUserModel(
        id: '',
        phoneNumber: '',
        emergencyContactNumber: '',
        location: LocationModel.empty(),
        name: '',
        bloodType: BloodType.unknown,
      );
}
