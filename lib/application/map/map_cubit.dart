import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helping_hands_sponty/domain/auth/auth_user_model.dart';
import 'package:injectable/injectable.dart';

import '../../domain/danger_reporting/i_danger_reporting_service.dart';
import '../auth/auth_cubit.dart';

part 'map_cubit.freezed.dart';
part 'map_state.dart';

@lazySingleton
class MapCubit extends Cubit<MapState> {
  final IDangerReportingService _dangerReportingService;
  final AuthCubit _authCubit;
  StreamSubscription<String>? _authUserIdSubscription;

  MapCubit(this._dangerReportingService, this._authCubit)
      : super(MapState.initial()) {
    emit(state.copyWith(
      userId: _authCubit.state.userModel.id,
    ));
    _authUserIdSubscription =
        _authCubit.stream.map((event) => event.userModel.id).listen((userId) {
      emit(state.copyWith(
        userId: userId,
      ));
    });
    _dangerReportingService.usersUnderDangerStream.listen((users) {
      emit(state.copyWith(usersUnderDanger: users));
    });
  }
  @override
  Future<void> close() async {
    _authUserIdSubscription?.cancel();
    super.close();
  }

  Future<void> markUserInDanger({required String dangerDescription}) async {
    print("markUserInDanger userid: ${state.userId}");
    emit(state.copyWith(
      isMarkingDangerStateInProgress: true,
      isMarkingDangerStateFailed: false,
    ));
    final successOption = await _dangerReportingService.markUserInDanger(
        userId: state.userId, dangerDescription: dangerDescription);
    successOption.match((_) {
      emit(state.copyWith(
        isMarkingDangerStateInProgress: false,
        isMarkingDangerStateFailed: false,
      ));
    }, () {
      emit(state.copyWith(
        isMarkingDangerStateInProgress: false,
        isMarkingDangerStateFailed: true,
      ));
    });
  }

  Future<void> markUserNotInDanger() async {
    emit(state.copyWith(
      isMarkingDangerStateInProgress: true,
      isMarkingDangerStateFailed: false,
    ));
    final successOption = await _dangerReportingService.markUserNotInDanger(
      userId: state.userId,
    );
    successOption.match((_) {
      emit(state.copyWith(
        isMarkingDangerStateInProgress: false,
        isMarkingDangerStateFailed: false,
      ));
    }, () {
      emit(state.copyWith(
        isMarkingDangerStateInProgress: false,
        isMarkingDangerStateFailed: true,
      ));
    });
  }
}
