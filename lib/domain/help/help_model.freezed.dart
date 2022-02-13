// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'help_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HelpModelTearOff {
  const _$HelpModelTearOff();

  _HelpModel call(
      {required AuthUserModel fromUser,
      required AuthUserModel toUser,
      required DateTime helpDate}) {
    return _HelpModel(
      fromUser: fromUser,
      toUser: toUser,
      helpDate: helpDate,
    );
  }
}

/// @nodoc
const $HelpModel = _$HelpModelTearOff();

/// @nodoc
mixin _$HelpModel {
  AuthUserModel get fromUser => throw _privateConstructorUsedError;
  AuthUserModel get toUser => throw _privateConstructorUsedError;
  DateTime get helpDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HelpModelCopyWith<HelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpModelCopyWith<$Res> {
  factory $HelpModelCopyWith(HelpModel value, $Res Function(HelpModel) then) =
      _$HelpModelCopyWithImpl<$Res>;
  $Res call({AuthUserModel fromUser, AuthUserModel toUser, DateTime helpDate});

  $AuthUserModelCopyWith<$Res> get fromUser;
  $AuthUserModelCopyWith<$Res> get toUser;
}

/// @nodoc
class _$HelpModelCopyWithImpl<$Res> implements $HelpModelCopyWith<$Res> {
  _$HelpModelCopyWithImpl(this._value, this._then);

  final HelpModel _value;
  // ignore: unused_field
  final $Res Function(HelpModel) _then;

  @override
  $Res call({
    Object? fromUser = freezed,
    Object? toUser = freezed,
    Object? helpDate = freezed,
  }) {
    return _then(_value.copyWith(
      fromUser: fromUser == freezed
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      toUser: toUser == freezed
          ? _value.toUser
          : toUser // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      helpDate: helpDate == freezed
          ? _value.helpDate
          : helpDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $AuthUserModelCopyWith<$Res> get fromUser {
    return $AuthUserModelCopyWith<$Res>(_value.fromUser, (value) {
      return _then(_value.copyWith(fromUser: value));
    });
  }

  @override
  $AuthUserModelCopyWith<$Res> get toUser {
    return $AuthUserModelCopyWith<$Res>(_value.toUser, (value) {
      return _then(_value.copyWith(toUser: value));
    });
  }
}

/// @nodoc
abstract class _$HelpModelCopyWith<$Res> implements $HelpModelCopyWith<$Res> {
  factory _$HelpModelCopyWith(
          _HelpModel value, $Res Function(_HelpModel) then) =
      __$HelpModelCopyWithImpl<$Res>;
  @override
  $Res call({AuthUserModel fromUser, AuthUserModel toUser, DateTime helpDate});

  @override
  $AuthUserModelCopyWith<$Res> get fromUser;
  @override
  $AuthUserModelCopyWith<$Res> get toUser;
}

/// @nodoc
class __$HelpModelCopyWithImpl<$Res> extends _$HelpModelCopyWithImpl<$Res>
    implements _$HelpModelCopyWith<$Res> {
  __$HelpModelCopyWithImpl(_HelpModel _value, $Res Function(_HelpModel) _then)
      : super(_value, (v) => _then(v as _HelpModel));

  @override
  _HelpModel get _value => super._value as _HelpModel;

  @override
  $Res call({
    Object? fromUser = freezed,
    Object? toUser = freezed,
    Object? helpDate = freezed,
  }) {
    return _then(_HelpModel(
      fromUser: fromUser == freezed
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      toUser: toUser == freezed
          ? _value.toUser
          : toUser // ignore: cast_nullable_to_non_nullable
              as AuthUserModel,
      helpDate: helpDate == freezed
          ? _value.helpDate
          : helpDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_HelpModel extends _HelpModel {
  const _$_HelpModel(
      {required this.fromUser, required this.toUser, required this.helpDate})
      : super._();

  @override
  final AuthUserModel fromUser;
  @override
  final AuthUserModel toUser;
  @override
  final DateTime helpDate;

  @override
  String toString() {
    return 'HelpModel(fromUser: $fromUser, toUser: $toUser, helpDate: $helpDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelpModel &&
            const DeepCollectionEquality().equals(other.fromUser, fromUser) &&
            const DeepCollectionEquality().equals(other.toUser, toUser) &&
            const DeepCollectionEquality().equals(other.helpDate, helpDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fromUser),
      const DeepCollectionEquality().hash(toUser),
      const DeepCollectionEquality().hash(helpDate));

  @JsonKey(ignore: true)
  @override
  _$HelpModelCopyWith<_HelpModel> get copyWith =>
      __$HelpModelCopyWithImpl<_HelpModel>(this, _$identity);
}

abstract class _HelpModel extends HelpModel {
  const factory _HelpModel(
      {required AuthUserModel fromUser,
      required AuthUserModel toUser,
      required DateTime helpDate}) = _$_HelpModel;
  const _HelpModel._() : super._();

  @override
  AuthUserModel get fromUser;
  @override
  AuthUserModel get toUser;
  @override
  DateTime get helpDate;
  @override
  @JsonKey(ignore: true)
  _$HelpModelCopyWith<_HelpModel> get copyWith =>
      throw _privateConstructorUsedError;
}
