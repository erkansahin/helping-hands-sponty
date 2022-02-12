// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_user_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthUserModelDto _$AuthUserModelDtoFromJson(Map<String, dynamic> json) {
  return _AuthUserModelDto.fromJson(json);
}

/// @nodoc
class _$AuthUserModelDtoTearOff {
  const _$AuthUserModelDtoTearOff();

  _AuthUserModelDto call(
      {required String id,
      required String name,
      required String phoneNumber,
      required double latitude,
      required double longitude,
      required String emergencyContactNumber,
      required String bloodType,
      required String dangerDescription,
      required String emergencyContactName,
      required bool isInDanger,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          required DateTime inDangerDate}) {
    return _AuthUserModelDto(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      latitude: latitude,
      longitude: longitude,
      emergencyContactNumber: emergencyContactNumber,
      bloodType: bloodType,
      dangerDescription: dangerDescription,
      emergencyContactName: emergencyContactName,
      isInDanger: isInDanger,
      inDangerDate: inDangerDate,
    );
  }

  AuthUserModelDto fromJson(Map<String, Object?> json) {
    return AuthUserModelDto.fromJson(json);
  }
}

/// @nodoc
const $AuthUserModelDto = _$AuthUserModelDtoTearOff();

/// @nodoc
mixin _$AuthUserModelDto {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;
  String get emergencyContactNumber => throw _privateConstructorUsedError;
  String get bloodType => throw _privateConstructorUsedError;
  String get dangerDescription => throw _privateConstructorUsedError;
  String get emergencyContactName => throw _privateConstructorUsedError;
  bool get isInDanger => throw _privateConstructorUsedError;
  @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
  DateTime get inDangerDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthUserModelDtoCopyWith<AuthUserModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserModelDtoCopyWith<$Res> {
  factory $AuthUserModelDtoCopyWith(
          AuthUserModelDto value, $Res Function(AuthUserModelDto) then) =
      _$AuthUserModelDtoCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      double latitude,
      double longitude,
      String emergencyContactNumber,
      String bloodType,
      String dangerDescription,
      String emergencyContactName,
      bool isInDanger,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          DateTime inDangerDate});
}

/// @nodoc
class _$AuthUserModelDtoCopyWithImpl<$Res>
    implements $AuthUserModelDtoCopyWith<$Res> {
  _$AuthUserModelDtoCopyWithImpl(this._value, this._then);

  final AuthUserModelDto _value;
  // ignore: unused_field
  final $Res Function(AuthUserModelDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? emergencyContactNumber = freezed,
    Object? bloodType = freezed,
    Object? dangerDescription = freezed,
    Object? emergencyContactName = freezed,
    Object? isInDanger = freezed,
    Object? inDangerDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      emergencyContactNumber: emergencyContactNumber == freezed
          ? _value.emergencyContactNumber
          : emergencyContactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bloodType: bloodType == freezed
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String,
      dangerDescription: dangerDescription == freezed
          ? _value.dangerDescription
          : dangerDescription // ignore: cast_nullable_to_non_nullable
              as String,
      emergencyContactName: emergencyContactName == freezed
          ? _value.emergencyContactName
          : emergencyContactName // ignore: cast_nullable_to_non_nullable
              as String,
      isInDanger: isInDanger == freezed
          ? _value.isInDanger
          : isInDanger // ignore: cast_nullable_to_non_nullable
              as bool,
      inDangerDate: inDangerDate == freezed
          ? _value.inDangerDate
          : inDangerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$AuthUserModelDtoCopyWith<$Res>
    implements $AuthUserModelDtoCopyWith<$Res> {
  factory _$AuthUserModelDtoCopyWith(
          _AuthUserModelDto value, $Res Function(_AuthUserModelDto) then) =
      __$AuthUserModelDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String phoneNumber,
      double latitude,
      double longitude,
      String emergencyContactNumber,
      String bloodType,
      String dangerDescription,
      String emergencyContactName,
      bool isInDanger,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          DateTime inDangerDate});
}

/// @nodoc
class __$AuthUserModelDtoCopyWithImpl<$Res>
    extends _$AuthUserModelDtoCopyWithImpl<$Res>
    implements _$AuthUserModelDtoCopyWith<$Res> {
  __$AuthUserModelDtoCopyWithImpl(
      _AuthUserModelDto _value, $Res Function(_AuthUserModelDto) _then)
      : super(_value, (v) => _then(v as _AuthUserModelDto));

  @override
  _AuthUserModelDto get _value => super._value as _AuthUserModelDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? emergencyContactNumber = freezed,
    Object? bloodType = freezed,
    Object? dangerDescription = freezed,
    Object? emergencyContactName = freezed,
    Object? isInDanger = freezed,
    Object? inDangerDate = freezed,
  }) {
    return _then(_AuthUserModelDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      emergencyContactNumber: emergencyContactNumber == freezed
          ? _value.emergencyContactNumber
          : emergencyContactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bloodType: bloodType == freezed
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as String,
      dangerDescription: dangerDescription == freezed
          ? _value.dangerDescription
          : dangerDescription // ignore: cast_nullable_to_non_nullable
              as String,
      emergencyContactName: emergencyContactName == freezed
          ? _value.emergencyContactName
          : emergencyContactName // ignore: cast_nullable_to_non_nullable
              as String,
      isInDanger: isInDanger == freezed
          ? _value.isInDanger
          : isInDanger // ignore: cast_nullable_to_non_nullable
              as bool,
      inDangerDate: inDangerDate == freezed
          ? _value.inDangerDate
          : inDangerDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthUserModelDto implements _AuthUserModelDto {
  _$_AuthUserModelDto(
      {required this.id,
      required this.name,
      required this.phoneNumber,
      required this.latitude,
      required this.longitude,
      required this.emergencyContactNumber,
      required this.bloodType,
      required this.dangerDescription,
      required this.emergencyContactName,
      required this.isInDanger,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          required this.inDangerDate});

  factory _$_AuthUserModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthUserModelDtoFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String phoneNumber;
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final String emergencyContactNumber;
  @override
  final String bloodType;
  @override
  final String dangerDescription;
  @override
  final String emergencyContactName;
  @override
  final bool isInDanger;
  @override
  @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
  final DateTime inDangerDate;

  @override
  String toString() {
    return 'AuthUserModelDto(id: $id, name: $name, phoneNumber: $phoneNumber, latitude: $latitude, longitude: $longitude, emergencyContactNumber: $emergencyContactNumber, bloodType: $bloodType, dangerDescription: $dangerDescription, emergencyContactName: $emergencyContactName, isInDanger: $isInDanger, inDangerDate: $inDangerDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthUserModelDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality()
                .equals(other.emergencyContactNumber, emergencyContactNumber) &&
            const DeepCollectionEquality().equals(other.bloodType, bloodType) &&
            const DeepCollectionEquality()
                .equals(other.dangerDescription, dangerDescription) &&
            const DeepCollectionEquality()
                .equals(other.emergencyContactName, emergencyContactName) &&
            const DeepCollectionEquality()
                .equals(other.isInDanger, isInDanger) &&
            const DeepCollectionEquality()
                .equals(other.inDangerDate, inDangerDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(emergencyContactNumber),
      const DeepCollectionEquality().hash(bloodType),
      const DeepCollectionEquality().hash(dangerDescription),
      const DeepCollectionEquality().hash(emergencyContactName),
      const DeepCollectionEquality().hash(isInDanger),
      const DeepCollectionEquality().hash(inDangerDate));

  @JsonKey(ignore: true)
  @override
  _$AuthUserModelDtoCopyWith<_AuthUserModelDto> get copyWith =>
      __$AuthUserModelDtoCopyWithImpl<_AuthUserModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthUserModelDtoToJson(this);
  }
}

abstract class _AuthUserModelDto implements AuthUserModelDto {
  factory _AuthUserModelDto(
      {required String id,
      required String name,
      required String phoneNumber,
      required double latitude,
      required double longitude,
      required String emergencyContactNumber,
      required String bloodType,
      required String dangerDescription,
      required String emergencyContactName,
      required bool isInDanger,
      @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
          required DateTime inDangerDate}) = _$_AuthUserModelDto;

  factory _AuthUserModelDto.fromJson(Map<String, dynamic> json) =
      _$_AuthUserModelDto.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get phoneNumber;
  @override
  double get latitude;
  @override
  double get longitude;
  @override
  String get emergencyContactNumber;
  @override
  String get bloodType;
  @override
  String get dangerDescription;
  @override
  String get emergencyContactName;
  @override
  bool get isInDanger;
  @override
  @JsonKey(fromJson: sendDateTimeFromJson, toJson: sendDateTimeToJson)
  DateTime get inDangerDate;
  @override
  @JsonKey(ignore: true)
  _$AuthUserModelDtoCopyWith<_AuthUserModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
