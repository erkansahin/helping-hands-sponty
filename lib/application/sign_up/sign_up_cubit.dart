import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/blood_type.dart';
import '../../domain/auth/i_auth_service.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  final IAuthService _authService;
  SignUpCubit(this._authService) : super(SignUpState.initial());

  Future<void> saveUser({
    required String name,
    required BloodType bloodType,
    required String phoneNumber,
    required String emergencyContactName,
    required String emergencyContactNumber,
  }) async {
    emit(state.copyWith(
      isInProgress: true,
      isFailed: false,
      isSuccess: false,
    ));
    final successOption = await _authService.signUpUser(
        name: name,
        bloodType: bloodType,
        phoneNumber: phoneNumber,
        emergencyContactName: emergencyContactName,
        emergencyContactNumber: emergencyContactNumber);
    successOption.match(
      (_) {
        emit(state.copyWith(
          isInProgress: false,
          isFailed: false,
          isSuccess: true,
        ));
      },
      () {
        emit(
          state.copyWith(
            isInProgress: false,
            isFailed: true,
            isSuccess: false,
          ),
        );
      },
    );
  }
}
