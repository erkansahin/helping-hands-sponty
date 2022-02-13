part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState({
    required bool isInProgress,
    required bool isSuccess,
    required bool isFailed,
    required String name,
    required BloodType bloodType,
    required String phoneNumber,
    required String emergencyContactName,
    required String emergencyContactNumber,
  }) = _SignUpState;
  const SignUpState._();
  factory SignUpState.initial() => const SignUpState(
        name: "",
        bloodType: BloodType.unknown,
        phoneNumber: "",
        emergencyContactName: "",
        emergencyContactNumber: "",
        isFailed: false,
        isInProgress: false,
        isSuccess: false,
      );
}
