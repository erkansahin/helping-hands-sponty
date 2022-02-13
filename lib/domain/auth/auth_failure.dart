import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmail() = InvalidEmail;
  const factory AuthFailure.weakPassword() = WeakPassword;
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.wrongPassword() = WrongPassword;
  const factory AuthFailure.userAlreadyExists() = UserAlreadyExists;
  const factory AuthFailure.tooManyRequests() = TooManyRequests;
  const factory AuthFailure.deviceNotSupported() = DeviceNotSupported;
  const factory AuthFailure.emailNotVerified() = EmailNotVerified;
  const factory AuthFailure.signInMethodNotAvailable(String methodName) =
      SignInMethodNotAvailable;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
  const factory AuthFailure.invalidPhoneNumber() = InvalidPhoneNumber;
  const factory AuthFailure.smsTimeout() = SmsTimeout;
  const factory AuthFailure.sessionExpired() = SessionExpired;
  const factory AuthFailure.invalidVerificationCode() = InvalidVerificationCode;
  const factory AuthFailure.providerAlreadyLinked() = ProviderAlreadyLinked;
  const factory AuthFailure.credentialAlreadyInUse() = CredentialAlreadyInUse;
}
