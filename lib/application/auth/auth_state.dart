part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    required AuthUserModel userModel,
    required bool isUserCheckedFromAuthService,
    required bool isAnonymousLoginInProgress,
  }) = _AuthState;
  const AuthState._();

  factory AuthState.empty() => AuthState(
        userModel: AuthUserModel.empty(),
        isUserCheckedFromAuthService: false,
        isAnonymousLoginInProgress: false,
      );

  bool get isLoggedIn => userModel.phoneNumber.isNotEmpty;
}
