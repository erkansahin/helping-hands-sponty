// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_life_cycle_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppLifeCycleStateTearOff {
  const _$AppLifeCycleStateTearOff();

  _Resumed resumed() {
    return const _Resumed();
  }

  _Inactive inactive() {
    return const _Inactive();
  }

  _Paused paused() {
    return const _Paused();
  }

  _Detached detached() {
    return const _Detached();
  }
}

/// @nodoc
const $AppLifeCycleState = _$AppLifeCycleStateTearOff();

/// @nodoc
mixin _$AppLifeCycleState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resumed,
    required TResult Function() inactive,
    required TResult Function() paused,
    required TResult Function() detached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? resumed,
    TResult Function()? inactive,
    TResult Function()? paused,
    TResult Function()? detached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resumed,
    TResult Function()? inactive,
    TResult Function()? paused,
    TResult Function()? detached,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Inactive value) inactive,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Detached value) detached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Paused value)? paused,
    TResult Function(_Detached value)? detached,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Paused value)? paused,
    TResult Function(_Detached value)? detached,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLifeCycleStateCopyWith<$Res> {
  factory $AppLifeCycleStateCopyWith(
          AppLifeCycleState value, $Res Function(AppLifeCycleState) then) =
      _$AppLifeCycleStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLifeCycleStateCopyWithImpl<$Res>
    implements $AppLifeCycleStateCopyWith<$Res> {
  _$AppLifeCycleStateCopyWithImpl(this._value, this._then);

  final AppLifeCycleState _value;
  // ignore: unused_field
  final $Res Function(AppLifeCycleState) _then;
}

/// @nodoc
abstract class _$ResumedCopyWith<$Res> {
  factory _$ResumedCopyWith(_Resumed value, $Res Function(_Resumed) then) =
      __$ResumedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ResumedCopyWithImpl<$Res> extends _$AppLifeCycleStateCopyWithImpl<$Res>
    implements _$ResumedCopyWith<$Res> {
  __$ResumedCopyWithImpl(_Resumed _value, $Res Function(_Resumed) _then)
      : super(_value, (v) => _then(v as _Resumed));

  @override
  _Resumed get _value => super._value as _Resumed;
}

/// @nodoc

class _$_Resumed extends _Resumed {
  const _$_Resumed() : super._();

  @override
  String toString() {
    return 'AppLifeCycleState.resumed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Resumed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resumed,
    required TResult Function() inactive,
    required TResult Function() paused,
    required TResult Function() detached,
  }) {
    return resumed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? resumed,
    TResult Function()? inactive,
    TResult Function()? paused,
    TResult Function()? detached,
  }) {
    return resumed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resumed,
    TResult Function()? inactive,
    TResult Function()? paused,
    TResult Function()? detached,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Inactive value) inactive,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Detached value) detached,
  }) {
    return resumed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Paused value)? paused,
    TResult Function(_Detached value)? detached,
  }) {
    return resumed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Paused value)? paused,
    TResult Function(_Detached value)? detached,
    required TResult orElse(),
  }) {
    if (resumed != null) {
      return resumed(this);
    }
    return orElse();
  }
}

abstract class _Resumed extends AppLifeCycleState {
  const factory _Resumed() = _$_Resumed;
  const _Resumed._() : super._();
}

/// @nodoc
abstract class _$InactiveCopyWith<$Res> {
  factory _$InactiveCopyWith(_Inactive value, $Res Function(_Inactive) then) =
      __$InactiveCopyWithImpl<$Res>;
}

/// @nodoc
class __$InactiveCopyWithImpl<$Res>
    extends _$AppLifeCycleStateCopyWithImpl<$Res>
    implements _$InactiveCopyWith<$Res> {
  __$InactiveCopyWithImpl(_Inactive _value, $Res Function(_Inactive) _then)
      : super(_value, (v) => _then(v as _Inactive));

  @override
  _Inactive get _value => super._value as _Inactive;
}

/// @nodoc

class _$_Inactive extends _Inactive {
  const _$_Inactive() : super._();

  @override
  String toString() {
    return 'AppLifeCycleState.inactive()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Inactive);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resumed,
    required TResult Function() inactive,
    required TResult Function() paused,
    required TResult Function() detached,
  }) {
    return inactive();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? resumed,
    TResult Function()? inactive,
    TResult Function()? paused,
    TResult Function()? detached,
  }) {
    return inactive?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resumed,
    TResult Function()? inactive,
    TResult Function()? paused,
    TResult Function()? detached,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Inactive value) inactive,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Detached value) detached,
  }) {
    return inactive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Paused value)? paused,
    TResult Function(_Detached value)? detached,
  }) {
    return inactive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Paused value)? paused,
    TResult Function(_Detached value)? detached,
    required TResult orElse(),
  }) {
    if (inactive != null) {
      return inactive(this);
    }
    return orElse();
  }
}

abstract class _Inactive extends AppLifeCycleState {
  const factory _Inactive() = _$_Inactive;
  const _Inactive._() : super._();
}

/// @nodoc
abstract class _$PausedCopyWith<$Res> {
  factory _$PausedCopyWith(_Paused value, $Res Function(_Paused) then) =
      __$PausedCopyWithImpl<$Res>;
}

/// @nodoc
class __$PausedCopyWithImpl<$Res> extends _$AppLifeCycleStateCopyWithImpl<$Res>
    implements _$PausedCopyWith<$Res> {
  __$PausedCopyWithImpl(_Paused _value, $Res Function(_Paused) _then)
      : super(_value, (v) => _then(v as _Paused));

  @override
  _Paused get _value => super._value as _Paused;
}

/// @nodoc

class _$_Paused extends _Paused {
  const _$_Paused() : super._();

  @override
  String toString() {
    return 'AppLifeCycleState.paused()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Paused);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resumed,
    required TResult Function() inactive,
    required TResult Function() paused,
    required TResult Function() detached,
  }) {
    return paused();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? resumed,
    TResult Function()? inactive,
    TResult Function()? paused,
    TResult Function()? detached,
  }) {
    return paused?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resumed,
    TResult Function()? inactive,
    TResult Function()? paused,
    TResult Function()? detached,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Inactive value) inactive,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Detached value) detached,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Paused value)? paused,
    TResult Function(_Detached value)? detached,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Paused value)? paused,
    TResult Function(_Detached value)? detached,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class _Paused extends AppLifeCycleState {
  const factory _Paused() = _$_Paused;
  const _Paused._() : super._();
}

/// @nodoc
abstract class _$DetachedCopyWith<$Res> {
  factory _$DetachedCopyWith(_Detached value, $Res Function(_Detached) then) =
      __$DetachedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DetachedCopyWithImpl<$Res>
    extends _$AppLifeCycleStateCopyWithImpl<$Res>
    implements _$DetachedCopyWith<$Res> {
  __$DetachedCopyWithImpl(_Detached _value, $Res Function(_Detached) _then)
      : super(_value, (v) => _then(v as _Detached));

  @override
  _Detached get _value => super._value as _Detached;
}

/// @nodoc

class _$_Detached extends _Detached {
  const _$_Detached() : super._();

  @override
  String toString() {
    return 'AppLifeCycleState.detached()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Detached);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() resumed,
    required TResult Function() inactive,
    required TResult Function() paused,
    required TResult Function() detached,
  }) {
    return detached();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? resumed,
    TResult Function()? inactive,
    TResult Function()? paused,
    TResult Function()? detached,
  }) {
    return detached?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? resumed,
    TResult Function()? inactive,
    TResult Function()? paused,
    TResult Function()? detached,
    required TResult orElse(),
  }) {
    if (detached != null) {
      return detached();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Resumed value) resumed,
    required TResult Function(_Inactive value) inactive,
    required TResult Function(_Paused value) paused,
    required TResult Function(_Detached value) detached,
  }) {
    return detached(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Paused value)? paused,
    TResult Function(_Detached value)? detached,
  }) {
    return detached?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Resumed value)? resumed,
    TResult Function(_Inactive value)? inactive,
    TResult Function(_Paused value)? paused,
    TResult Function(_Detached value)? detached,
    required TResult orElse(),
  }) {
    if (detached != null) {
      return detached(this);
    }
    return orElse();
  }
}

abstract class _Detached extends AppLifeCycleState {
  const factory _Detached() = _$_Detached;
  const _Detached._() : super._();
}
