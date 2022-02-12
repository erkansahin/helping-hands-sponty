import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helping_hands_sponty/domain/auth/auth_user_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth/i_auth_service.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  final IAuthService _authService;

  ///The stream subscription for listening to the auth state changes
  StreamSubscription<AuthUserModel>? _authUserSubscription;
  StreamSubscription<AuthUserModel>? _databaseUserSubscription;
  AuthCubit(
    this._authService,
  ) : super(AuthState.empty()) {
    _authUserSubscription =
        _authService.authStateChanges.listen(_listenAuthStateChangesStream);
  }
  @override
  Future<void> close() async {
    await _authUserSubscription?.cancel();
    await _databaseUserSubscription?.cancel();
    super.close();
  }

  Future<void> _startDatabaseUserSubscriptionIfPossible() async {
    await _databaseUserSubscription?.cancel();

    if (state.userModel != AuthUserModel.empty()) {
      _databaseUserSubscription =
          _authService.databaseUserChanges(userId: state.userModel.id).listen(
        (AuthUserModel databaseUser) {
          emit(
            state.copyWith(userModel: databaseUser),
          );
        },
      );
    }
  }

  Future<void> _listenAuthStateChangesStream(AuthUserModel authUser) async {
    if (authUser == AuthUserModel.empty()) {
      emit(state.copyWith(
        userModel: AuthUserModel.empty(),
        isUserCheckedFromAuthService: true,
      ));
      if (!state.isAnonymousLoginInProgress) {
        emit(state.copyWith(isAnonymousLoginInProgress: true));

        await _authService.signInAnonymously();

        emit(state.copyWith(isAnonymousLoginInProgress: false));
      }
    } else {
      await _authService.saveUserToDatabase(userModel: authUser);
      final updatedDatabaseUserOption =
          await _authService.getDatabaseUser(id: authUser.id);
      updatedDatabaseUserOption.match(
        (updatedDBUser) {
          emit(state.copyWith(userModel: updatedDBUser));
        },
        () {
          log("authhhhh no db user is found ${authUser.id}");
        },
      );
      await _startDatabaseUserSubscriptionIfPossible();
    }
  }

  Future<void> signOut() async {
    await _authService.signOut();
  }
}