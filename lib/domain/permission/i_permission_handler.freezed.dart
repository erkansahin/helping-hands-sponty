// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'i_permission_handler.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PermissionStateUnionTearOff {
  const _$PermissionStateUnionTearOff();

  Denied denied() {
    return const Denied();
  }

  Undetermined undetermined() {
    return const Undetermined();
  }

  Restricted restricted() {
    return const Restricted();
  }

  Granted granted() {
    return const Granted();
  }

  PermanentlyDenied permanentlyDenied() {
    return const PermanentlyDenied();
  }
}

/// @nodoc
const $PermissionStateUnion = _$PermissionStateUnionTearOff();

/// @nodoc
mixin _$PermissionStateUnion {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() denied,
    required TResult Function() undetermined,
    required TResult Function() restricted,
    required TResult Function() granted,
    required TResult Function() permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? denied,
    TResult Function()? undetermined,
    TResult Function()? restricted,
    TResult Function()? granted,
    TResult Function()? permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? denied,
    TResult Function()? undetermined,
    TResult Function()? restricted,
    TResult Function()? granted,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Denied value) denied,
    required TResult Function(Undetermined value) undetermined,
    required TResult Function(Restricted value) restricted,
    required TResult Function(Granted value) granted,
    required TResult Function(PermanentlyDenied value) permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Denied value)? denied,
    TResult Function(Undetermined value)? undetermined,
    TResult Function(Restricted value)? restricted,
    TResult Function(Granted value)? granted,
    TResult Function(PermanentlyDenied value)? permanentlyDenied,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Denied value)? denied,
    TResult Function(Undetermined value)? undetermined,
    TResult Function(Restricted value)? restricted,
    TResult Function(Granted value)? granted,
    TResult Function(PermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionStateUnionCopyWith<$Res> {
  factory $PermissionStateUnionCopyWith(PermissionStateUnion value,
          $Res Function(PermissionStateUnion) then) =
      _$PermissionStateUnionCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermissionStateUnionCopyWithImpl<$Res>
    implements $PermissionStateUnionCopyWith<$Res> {
  _$PermissionStateUnionCopyWithImpl(this._value, this._then);

  final PermissionStateUnion _value;
  // ignore: unused_field
  final $Res Function(PermissionStateUnion) _then;
}

/// @nodoc
abstract class $DeniedCopyWith<$Res> {
  factory $DeniedCopyWith(Denied value, $Res Function(Denied) then) =
      _$DeniedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DeniedCopyWithImpl<$Res>
    extends _$PermissionStateUnionCopyWithImpl<$Res>
    implements $DeniedCopyWith<$Res> {
  _$DeniedCopyWithImpl(Denied _value, $Res Function(Denied) _then)
      : super(_value, (v) => _then(v as Denied));

  @override
  Denied get _value => super._value as Denied;
}

/// @nodoc

class _$Denied implements Denied {
  const _$Denied();

  @override
  String toString() {
    return 'PermissionStateUnion.denied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Denied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() denied,
    required TResult Function() undetermined,
    required TResult Function() restricted,
    required TResult Function() granted,
    required TResult Function() permanentlyDenied,
  }) {
    return denied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? denied,
    TResult Function()? undetermined,
    TResult Function()? restricted,
    TResult Function()? granted,
    TResult Function()? permanentlyDenied,
  }) {
    return denied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? denied,
    TResult Function()? undetermined,
    TResult Function()? restricted,
    TResult Function()? granted,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Denied value) denied,
    required TResult Function(Undetermined value) undetermined,
    required TResult Function(Restricted value) restricted,
    required TResult Function(Granted value) granted,
    required TResult Function(PermanentlyDenied value) permanentlyDenied,
  }) {
    return denied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Denied value)? denied,
    TResult Function(Undetermined value)? undetermined,
    TResult Function(Restricted value)? restricted,
    TResult Function(Granted value)? granted,
    TResult Function(PermanentlyDenied value)? permanentlyDenied,
  }) {
    return denied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Denied value)? denied,
    TResult Function(Undetermined value)? undetermined,
    TResult Function(Restricted value)? restricted,
    TResult Function(Granted value)? granted,
    TResult Function(PermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (denied != null) {
      return denied(this);
    }
    return orElse();
  }
}

abstract class Denied implements PermissionStateUnion {
  const factory Denied() = _$Denied;
}

/// @nodoc
abstract class $UndeterminedCopyWith<$Res> {
  factory $UndeterminedCopyWith(
          Undetermined value, $Res Function(Undetermined) then) =
      _$UndeterminedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UndeterminedCopyWithImpl<$Res>
    extends _$PermissionStateUnionCopyWithImpl<$Res>
    implements $UndeterminedCopyWith<$Res> {
  _$UndeterminedCopyWithImpl(
      Undetermined _value, $Res Function(Undetermined) _then)
      : super(_value, (v) => _then(v as Undetermined));

  @override
  Undetermined get _value => super._value as Undetermined;
}

/// @nodoc

class _$Undetermined implements Undetermined {
  const _$Undetermined();

  @override
  String toString() {
    return 'PermissionStateUnion.undetermined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Undetermined);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() denied,
    required TResult Function() undetermined,
    required TResult Function() restricted,
    required TResult Function() granted,
    required TResult Function() permanentlyDenied,
  }) {
    return undetermined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? denied,
    TResult Function()? undetermined,
    TResult Function()? restricted,
    TResult Function()? granted,
    TResult Function()? permanentlyDenied,
  }) {
    return undetermined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? denied,
    TResult Function()? undetermined,
    TResult Function()? restricted,
    TResult Function()? granted,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (undetermined != null) {
      return undetermined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Denied value) denied,
    required TResult Function(Undetermined value) undetermined,
    required TResult Function(Restricted value) restricted,
    required TResult Function(Granted value) granted,
    required TResult Function(PermanentlyDenied value) permanentlyDenied,
  }) {
    return undetermined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Denied value)? denied,
    TResult Function(Undetermined value)? undetermined,
    TResult Function(Restricted value)? restricted,
    TResult Function(Granted value)? granted,
    TResult Function(PermanentlyDenied value)? permanentlyDenied,
  }) {
    return undetermined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Denied value)? denied,
    TResult Function(Undetermined value)? undetermined,
    TResult Function(Restricted value)? restricted,
    TResult Function(Granted value)? granted,
    TResult Function(PermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (undetermined != null) {
      return undetermined(this);
    }
    return orElse();
  }
}

abstract class Undetermined implements PermissionStateUnion {
  const factory Undetermined() = _$Undetermined;
}

/// @nodoc
abstract class $RestrictedCopyWith<$Res> {
  factory $RestrictedCopyWith(
          Restricted value, $Res Function(Restricted) then) =
      _$RestrictedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RestrictedCopyWithImpl<$Res>
    extends _$PermissionStateUnionCopyWithImpl<$Res>
    implements $RestrictedCopyWith<$Res> {
  _$RestrictedCopyWithImpl(Restricted _value, $Res Function(Restricted) _then)
      : super(_value, (v) => _then(v as Restricted));

  @override
  Restricted get _value => super._value as Restricted;
}

/// @nodoc

class _$Restricted implements Restricted {
  const _$Restricted();

  @override
  String toString() {
    return 'PermissionStateUnion.restricted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Restricted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() denied,
    required TResult Function() undetermined,
    required TResult Function() restricted,
    required TResult Function() granted,
    required TResult Function() permanentlyDenied,
  }) {
    return restricted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? denied,
    TResult Function()? undetermined,
    TResult Function()? restricted,
    TResult Function()? granted,
    TResult Function()? permanentlyDenied,
  }) {
    return restricted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? denied,
    TResult Function()? undetermined,
    TResult Function()? restricted,
    TResult Function()? granted,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (restricted != null) {
      return restricted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Denied value) denied,
    required TResult Function(Undetermined value) undetermined,
    required TResult Function(Restricted value) restricted,
    required TResult Function(Granted value) granted,
    required TResult Function(PermanentlyDenied value) permanentlyDenied,
  }) {
    return restricted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Denied value)? denied,
    TResult Function(Undetermined value)? undetermined,
    TResult Function(Restricted value)? restricted,
    TResult Function(Granted value)? granted,
    TResult Function(PermanentlyDenied value)? permanentlyDenied,
  }) {
    return restricted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Denied value)? denied,
    TResult Function(Undetermined value)? undetermined,
    TResult Function(Restricted value)? restricted,
    TResult Function(Granted value)? granted,
    TResult Function(PermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (restricted != null) {
      return restricted(this);
    }
    return orElse();
  }
}

abstract class Restricted implements PermissionStateUnion {
  const factory Restricted() = _$Restricted;
}

/// @nodoc
abstract class $GrantedCopyWith<$Res> {
  factory $GrantedCopyWith(Granted value, $Res Function(Granted) then) =
      _$GrantedCopyWithImpl<$Res>;
}

/// @nodoc
class _$GrantedCopyWithImpl<$Res>
    extends _$PermissionStateUnionCopyWithImpl<$Res>
    implements $GrantedCopyWith<$Res> {
  _$GrantedCopyWithImpl(Granted _value, $Res Function(Granted) _then)
      : super(_value, (v) => _then(v as Granted));

  @override
  Granted get _value => super._value as Granted;
}

/// @nodoc

class _$Granted implements Granted {
  const _$Granted();

  @override
  String toString() {
    return 'PermissionStateUnion.granted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Granted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() denied,
    required TResult Function() undetermined,
    required TResult Function() restricted,
    required TResult Function() granted,
    required TResult Function() permanentlyDenied,
  }) {
    return granted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? denied,
    TResult Function()? undetermined,
    TResult Function()? restricted,
    TResult Function()? granted,
    TResult Function()? permanentlyDenied,
  }) {
    return granted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? denied,
    TResult Function()? undetermined,
    TResult Function()? restricted,
    TResult Function()? granted,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Denied value) denied,
    required TResult Function(Undetermined value) undetermined,
    required TResult Function(Restricted value) restricted,
    required TResult Function(Granted value) granted,
    required TResult Function(PermanentlyDenied value) permanentlyDenied,
  }) {
    return granted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Denied value)? denied,
    TResult Function(Undetermined value)? undetermined,
    TResult Function(Restricted value)? restricted,
    TResult Function(Granted value)? granted,
    TResult Function(PermanentlyDenied value)? permanentlyDenied,
  }) {
    return granted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Denied value)? denied,
    TResult Function(Undetermined value)? undetermined,
    TResult Function(Restricted value)? restricted,
    TResult Function(Granted value)? granted,
    TResult Function(PermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (granted != null) {
      return granted(this);
    }
    return orElse();
  }
}

abstract class Granted implements PermissionStateUnion {
  const factory Granted() = _$Granted;
}

/// @nodoc
abstract class $PermanentlyDeniedCopyWith<$Res> {
  factory $PermanentlyDeniedCopyWith(
          PermanentlyDenied value, $Res Function(PermanentlyDenied) then) =
      _$PermanentlyDeniedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PermanentlyDeniedCopyWithImpl<$Res>
    extends _$PermissionStateUnionCopyWithImpl<$Res>
    implements $PermanentlyDeniedCopyWith<$Res> {
  _$PermanentlyDeniedCopyWithImpl(
      PermanentlyDenied _value, $Res Function(PermanentlyDenied) _then)
      : super(_value, (v) => _then(v as PermanentlyDenied));

  @override
  PermanentlyDenied get _value => super._value as PermanentlyDenied;
}

/// @nodoc

class _$PermanentlyDenied implements PermanentlyDenied {
  const _$PermanentlyDenied();

  @override
  String toString() {
    return 'PermissionStateUnion.permanentlyDenied()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PermanentlyDenied);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() denied,
    required TResult Function() undetermined,
    required TResult Function() restricted,
    required TResult Function() granted,
    required TResult Function() permanentlyDenied,
  }) {
    return permanentlyDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? denied,
    TResult Function()? undetermined,
    TResult Function()? restricted,
    TResult Function()? granted,
    TResult Function()? permanentlyDenied,
  }) {
    return permanentlyDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? denied,
    TResult Function()? undetermined,
    TResult Function()? restricted,
    TResult Function()? granted,
    TResult Function()? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (permanentlyDenied != null) {
      return permanentlyDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Denied value) denied,
    required TResult Function(Undetermined value) undetermined,
    required TResult Function(Restricted value) restricted,
    required TResult Function(Granted value) granted,
    required TResult Function(PermanentlyDenied value) permanentlyDenied,
  }) {
    return permanentlyDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Denied value)? denied,
    TResult Function(Undetermined value)? undetermined,
    TResult Function(Restricted value)? restricted,
    TResult Function(Granted value)? granted,
    TResult Function(PermanentlyDenied value)? permanentlyDenied,
  }) {
    return permanentlyDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Denied value)? denied,
    TResult Function(Undetermined value)? undetermined,
    TResult Function(Restricted value)? restricted,
    TResult Function(Granted value)? granted,
    TResult Function(PermanentlyDenied value)? permanentlyDenied,
    required TResult orElse(),
  }) {
    if (permanentlyDenied != null) {
      return permanentlyDenied(this);
    }
    return orElse();
  }
}

abstract class PermanentlyDenied implements PermissionStateUnion {
  const factory PermanentlyDenied() = _$PermanentlyDenied;
}
