// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'help_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HelpModelDto _$HelpModelDtoFromJson(Map<String, dynamic> json) {
  return _HelpModelDto.fromJson(json);
}

/// @nodoc
class _$HelpModelDtoTearOff {
  const _$HelpModelDtoTearOff();

  _HelpModelDto call(
      {required AuthUserModelDto fromUser,
      required AuthUserModelDto toUser,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          required DateTime helpDate}) {
    return _HelpModelDto(
      fromUser: fromUser,
      toUser: toUser,
      helpDate: helpDate,
    );
  }

  HelpModelDto fromJson(Map<String, Object?> json) {
    return HelpModelDto.fromJson(json);
  }
}

/// @nodoc
const $HelpModelDto = _$HelpModelDtoTearOff();

/// @nodoc
mixin _$HelpModelDto {
  AuthUserModelDto get fromUser => throw _privateConstructorUsedError;
  AuthUserModelDto get toUser => throw _privateConstructorUsedError;
  @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
  DateTime get helpDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelpModelDtoCopyWith<HelpModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpModelDtoCopyWith<$Res> {
  factory $HelpModelDtoCopyWith(
          HelpModelDto value, $Res Function(HelpModelDto) then) =
      _$HelpModelDtoCopyWithImpl<$Res>;
  $Res call(
      {AuthUserModelDto fromUser,
      AuthUserModelDto toUser,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          DateTime helpDate});

  $AuthUserModelDtoCopyWith<$Res> get fromUser;
  $AuthUserModelDtoCopyWith<$Res> get toUser;
}

/// @nodoc
class _$HelpModelDtoCopyWithImpl<$Res> implements $HelpModelDtoCopyWith<$Res> {
  _$HelpModelDtoCopyWithImpl(this._value, this._then);

  final HelpModelDto _value;
  // ignore: unused_field
  final $Res Function(HelpModelDto) _then;

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
              as AuthUserModelDto,
      toUser: toUser == freezed
          ? _value.toUser
          : toUser // ignore: cast_nullable_to_non_nullable
              as AuthUserModelDto,
      helpDate: helpDate == freezed
          ? _value.helpDate
          : helpDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $AuthUserModelDtoCopyWith<$Res> get fromUser {
    return $AuthUserModelDtoCopyWith<$Res>(_value.fromUser, (value) {
      return _then(_value.copyWith(fromUser: value));
    });
  }

  @override
  $AuthUserModelDtoCopyWith<$Res> get toUser {
    return $AuthUserModelDtoCopyWith<$Res>(_value.toUser, (value) {
      return _then(_value.copyWith(toUser: value));
    });
  }
}

/// @nodoc
abstract class _$HelpModelDtoCopyWith<$Res>
    implements $HelpModelDtoCopyWith<$Res> {
  factory _$HelpModelDtoCopyWith(
          _HelpModelDto value, $Res Function(_HelpModelDto) then) =
      __$HelpModelDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {AuthUserModelDto fromUser,
      AuthUserModelDto toUser,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          DateTime helpDate});

  @override
  $AuthUserModelDtoCopyWith<$Res> get fromUser;
  @override
  $AuthUserModelDtoCopyWith<$Res> get toUser;
}

/// @nodoc
class __$HelpModelDtoCopyWithImpl<$Res> extends _$HelpModelDtoCopyWithImpl<$Res>
    implements _$HelpModelDtoCopyWith<$Res> {
  __$HelpModelDtoCopyWithImpl(
      _HelpModelDto _value, $Res Function(_HelpModelDto) _then)
      : super(_value, (v) => _then(v as _HelpModelDto));

  @override
  _HelpModelDto get _value => super._value as _HelpModelDto;

  @override
  $Res call({
    Object? fromUser = freezed,
    Object? toUser = freezed,
    Object? helpDate = freezed,
  }) {
    return _then(_HelpModelDto(
      fromUser: fromUser == freezed
          ? _value.fromUser
          : fromUser // ignore: cast_nullable_to_non_nullable
              as AuthUserModelDto,
      toUser: toUser == freezed
          ? _value.toUser
          : toUser // ignore: cast_nullable_to_non_nullable
              as AuthUserModelDto,
      helpDate: helpDate == freezed
          ? _value.helpDate
          : helpDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HelpModelDto implements _HelpModelDto {
  _$_HelpModelDto(
      {required this.fromUser,
      required this.toUser,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          required this.helpDate});

  factory _$_HelpModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_HelpModelDtoFromJson(json);

  @override
  final AuthUserModelDto fromUser;
  @override
  final AuthUserModelDto toUser;
  @override
  @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
  final DateTime helpDate;

  @override
  String toString() {
    return 'HelpModelDto(fromUser: $fromUser, toUser: $toUser, helpDate: $helpDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HelpModelDto &&
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
  _$HelpModelDtoCopyWith<_HelpModelDto> get copyWith =>
      __$HelpModelDtoCopyWithImpl<_HelpModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelpModelDtoToJson(this);
  }
}

abstract class _HelpModelDto implements HelpModelDto {
  factory _HelpModelDto(
      {required AuthUserModelDto fromUser,
      required AuthUserModelDto toUser,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          required DateTime helpDate}) = _$_HelpModelDto;

  factory _HelpModelDto.fromJson(Map<String, dynamic> json) =
      _$_HelpModelDto.fromJson;

  @override
  AuthUserModelDto get fromUser;
  @override
  AuthUserModelDto get toUser;
  @override
  @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
  DateTime get helpDate;
  @override
  @JsonKey(ignore: true)
  _$HelpModelDtoCopyWith<_HelpModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
