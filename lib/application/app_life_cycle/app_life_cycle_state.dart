part of 'app_life_cycle_cubit.dart';

@freezed
class AppLifeCycleState with _$AppLifeCycleState {
  const factory AppLifeCycleState.resumed() = _Resumed;
  const factory AppLifeCycleState.inactive() = _Inactive;
  const factory AppLifeCycleState.paused() = _Paused;
  const factory AppLifeCycleState.detached() = _Detached;

  const AppLifeCycleState._();

  bool get isDetached =>
      maybeMap(detached: (_Detached s) => true, orElse: () => false);
  bool get isResumed =>
      maybeMap(resumed: (_Resumed s) => true, orElse: () => false);
  bool get isPaused =>
      maybeMap(paused: (_Paused s) => true, orElse: () => false);
  bool get isInactive =>
      maybeMap(inactive: (_Inactive s) => true, orElse: () => false);
}
