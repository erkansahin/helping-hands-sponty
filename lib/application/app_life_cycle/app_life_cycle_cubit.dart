import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_life_cycle_state.dart';
part 'app_life_cycle_cubit.freezed.dart';

@singleton
class AppLifeCycleCubit extends Cubit<AppLifeCycleState>
    with WidgetsBindingObserver {
  AppLifeCycleCubit() : super(const AppLifeCycleState.resumed()) {
    WidgetsBinding.instance!.addObserver(this);
  }

  @override
  Future<void> close() async {
    WidgetsBinding.instance!.removeObserver(this);
    super.close();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        emit(const AppLifeCycleState.resumed());
        break;
      case AppLifecycleState.inactive:
        emit(const AppLifeCycleState.inactive());
        break;
      case AppLifecycleState.paused:
        emit(const AppLifeCycleState.paused());
        break;
      case AppLifecycleState.detached:
        emit(const AppLifeCycleState.detached());
        break;
    }
  }
}
