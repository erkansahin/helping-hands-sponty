// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_model_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationModelDto _$LocationModelDtoFromJson(Map<String, dynamic> json) {
  return _LocationModelDto.fromJson(json);
}

/// @nodoc
class _$LocationModelDtoTearOff {
  const _$LocationModelDtoTearOff();

  _LocationModelDto call(
      {required double latitude, required double longitude}) {
    return _LocationModelDto(
      latitude: latitude,
      longitude: longitude,
    );
  }

  LocationModelDto fromJson(Map<String, Object?> json) {
    return LocationModelDto.fromJson(json);
  }
}

/// @nodoc
const $LocationModelDto = _$LocationModelDtoTearOff();

/// @nodoc
mixin _$LocationModelDto {
  double get latitude => throw _privateConstructorUsedError;
  double get longitude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelDtoCopyWith<LocationModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelDtoCopyWith<$Res> {
  factory $LocationModelDtoCopyWith(
          LocationModelDto value, $Res Function(LocationModelDto) then) =
      _$LocationModelDtoCopyWithImpl<$Res>;
  $Res call({double latitude, double longitude});
}

/// @nodoc
class _$LocationModelDtoCopyWithImpl<$Res>
    implements $LocationModelDtoCopyWith<$Res> {
  _$LocationModelDtoCopyWithImpl(this._value, this._then);

  final LocationModelDto _value;
  // ignore: unused_field
  final $Res Function(LocationModelDto) _then;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$LocationModelDtoCopyWith<$Res>
    implements $LocationModelDtoCopyWith<$Res> {
  factory _$LocationModelDtoCopyWith(
          _LocationModelDto value, $Res Function(_LocationModelDto) then) =
      __$LocationModelDtoCopyWithImpl<$Res>;
  @override
  $Res call({double latitude, double longitude});
}

/// @nodoc
class __$LocationModelDtoCopyWithImpl<$Res>
    extends _$LocationModelDtoCopyWithImpl<$Res>
    implements _$LocationModelDtoCopyWith<$Res> {
  __$LocationModelDtoCopyWithImpl(
      _LocationModelDto _value, $Res Function(_LocationModelDto) _then)
      : super(_value, (v) => _then(v as _LocationModelDto));

  @override
  _LocationModelDto get _value => super._value as _LocationModelDto;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(_LocationModelDto(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocationModelDto implements _LocationModelDto {
  _$_LocationModelDto({required this.latitude, required this.longitude});

  factory _$_LocationModelDto.fromJson(Map<String, dynamic> json) =>
      _$$_LocationModelDtoFromJson(json);

  @override
  final double latitude;
  @override
  final double longitude;

  @override
  String toString() {
    return 'LocationModelDto(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationModelDto &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude));

  @JsonKey(ignore: true)
  @override
  _$LocationModelDtoCopyWith<_LocationModelDto> get copyWith =>
      __$LocationModelDtoCopyWithImpl<_LocationModelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationModelDtoToJson(this);
  }
}

abstract class _LocationModelDto implements LocationModelDto {
  factory _LocationModelDto(
      {required double latitude,
      required double longitude}) = _$_LocationModelDto;

  factory _LocationModelDto.fromJson(Map<String, dynamic> json) =
      _$_LocationModelDto.fromJson;

  @override
  double get latitude;
  @override
  double get longitude;
  @override
  @JsonKey(ignore: true)
  _$LocationModelDtoCopyWith<_LocationModelDto> get copyWith =>
      throw _privateConstructorUsedError;
}
