import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
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
    print("authUser $authUser");
    if (authUser == AuthUserModel.empty()) {
      emit(state.copyWith(
        userModel: AuthUserModel.empty(),
        isUserCheckedFromAuthService: true,
      ));
      if (!state.isAnonymousLoginInProgress) {
        emit(state.copyWith(
            isAnonymousLoginInProgress: true,
            isUserCheckedFromAuthService: true));

        await _authService.signInAnonymously();

        emit(state.copyWith(
            isAnonymousLoginInProgress: false,
            isUserCheckedFromAuthService: true));
      }
    } else {
      final dbUserOption = await _authService.getDatabaseUser(id: authUser.id);
      dbUserOption.match(
        (dbUser) async {
          if (dbUser.name == "") {
            await _authService.saveUserToDatabase(
                userModel:
                    AuthUserModel.empty().copyWith(id: state.userModel.id));
          }
          final dbUserOption =
              await _authService.getDatabaseUser(id: authUser.id);
          emit(state.copyWith(
              userModel: dbUser, isUserCheckedFromAuthService: true));
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

  Future<void> signUp(AuthUserModel userModel) async {
    emit(state.copyWith(isSignupInProgress: true));
    await _authService.saveUserToDatabase(userModel: userModel);
    emit(state.copyWith(isSignupInProgress: false, userModel: userModel));
  }

  Future<void> login(String phoneNumber) async {
    emit(state.copyWith(isLoginInProgress: true));
    final userOption = await _authService.getDatabaseUserWithPhoneNumber(
        phoneNumber: phoneNumber);
    emit(state.copyWith(isLoginInProgress: false));
    userOption.match((t) {
      emit(state.copyWith(userModel: t));
    }, () {
      log("authhhhh no db user is found $phoneNumber");
    });
  }
}
