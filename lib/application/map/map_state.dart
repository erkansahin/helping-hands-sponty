part of 'map_cubit.dart';

@freezed
class MapState with _$MapState {
  const factory MapState({
    required List<AuthUserModel> usersUnderDanger,
    required bool isMarkingDangerStateInProgress,
    required bool isMarkingDangerStateFailed,
    required String userId,
  }) = _MapState;
  const MapState._();
  factory MapState.initial() => const MapState(
        isMarkingDangerStateFailed: false,
        isMarkingDangerStateInProgress: false,
        userId: "",
        usersUnderDanger: [],
      );
}
