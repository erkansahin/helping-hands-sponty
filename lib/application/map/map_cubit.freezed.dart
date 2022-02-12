// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'map_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MapStateTearOff {
  const _$MapStateTearOff();

  _MapState call(
      {required bool isMarkingDangerStateInProgress,
      required bool isMarkingDangerStateFailed,
      required String userId}) {
    return _MapState(
      isMarkingDangerStateInProgress: isMarkingDangerStateInProgress,
      isMarkingDangerStateFailed: isMarkingDangerStateFailed,
      userId: userId,
    );
  }
}

/// @nodoc
const $MapState = _$MapStateTearOff();

/// @nodoc
mixin _$MapState {
  bool get isMarkingDangerStateInProgress => throw _privateConstructorUsedError;
  bool get isMarkingDangerStateFailed => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MapStateCopyWith<MapState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapStateCopyWith<$Res> {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) then) =
      _$MapStateCopyWithImpl<$Res>;
  $Res call(
      {bool isMarkingDangerStateInProgress,
      bool isMarkingDangerStateFailed,
      String userId});
}

/// @nodoc
class _$MapStateCopyWithImpl<$Res> implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._value, this._then);

  final MapState _value;
  // ignore: unused_field
  final $Res Function(MapState) _then;

  @override
  $Res call({
    Object? isMarkingDangerStateInProgress = freezed,
    Object? isMarkingDangerStateFailed = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      isMarkingDangerStateInProgress: isMarkingDangerStateInProgress == freezed
          ? _value.isMarkingDangerStateInProgress
          : isMarkingDangerStateInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      isMarkingDangerStateFailed: isMarkingDangerStateFailed == freezed
          ? _value.isMarkingDangerStateFailed
          : isMarkingDangerStateFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) then) =
      __$MapStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isMarkingDangerStateInProgress,
      bool isMarkingDangerStateFailed,
      String userId});
}

/// @nodoc
class __$MapStateCopyWithImpl<$Res> extends _$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(_MapState _value, $Res Function(_MapState) _then)
      : super(_value, (v) => _then(v as _MapState));

  @override
  _MapState get _value => super._value as _MapState;

  @override
  $Res call({
    Object? isMarkingDangerStateInProgress = freezed,
    Object? isMarkingDangerStateFailed = freezed,
    Object? userId = freezed,
  }) {
    return _then(_MapState(
      isMarkingDangerStateInProgress: isMarkingDangerStateInProgress == freezed
          ? _value.isMarkingDangerStateInProgress
          : isMarkingDangerStateInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      isMarkingDangerStateFailed: isMarkingDangerStateFailed == freezed
          ? _value.isMarkingDangerStateFailed
          : isMarkingDangerStateFailed // ignore: cast_nullable_to_non_nullable
              as bool,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MapState extends _MapState {
  const _$_MapState(
      {required this.isMarkingDangerStateInProgress,
      required this.isMarkingDangerStateFailed,
      required this.userId})
      : super._();

  @override
  final bool isMarkingDangerStateInProgress;
  @override
  final bool isMarkingDangerStateFailed;
  @override
  final String userId;

  @override
  String toString() {
    return 'MapState(isMarkingDangerStateInProgress: $isMarkingDangerStateInProgress, isMarkingDangerStateFailed: $isMarkingDangerStateFailed, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MapState &&
            const DeepCollectionEquality().equals(
                other.isMarkingDangerStateInProgress,
                isMarkingDangerStateInProgress) &&
            const DeepCollectionEquality().equals(
                other.isMarkingDangerStateFailed, isMarkingDangerStateFailed) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isMarkingDangerStateInProgress),
      const DeepCollectionEquality().hash(isMarkingDangerStateFailed),
      const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$MapStateCopyWith<_MapState> get copyWith =>
      __$MapStateCopyWithImpl<_MapState>(this, _$identity);
}

abstract class _MapState extends MapState {
  const factory _MapState(
      {required bool isMarkingDangerStateInProgress,
      required bool isMarkingDangerStateFailed,
      required String userId}) = _$_MapState;
  const _MapState._() : super._();

  @override
  bool get isMarkingDangerStateInProgress;
  @override
  bool get isMarkingDangerStateFailed;
  @override
  String get userId;
  @override
  @JsonKey(ignore: true)
  _$MapStateCopyWith<_MapState> get copyWith =>
      throw _privateConstructorUsedError;
}
