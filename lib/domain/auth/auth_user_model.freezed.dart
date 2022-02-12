// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthUserModelTearOff {
  const _$AuthUserModelTearOff();

  _AuthUserModel call(
      {required String id,
      required String phoneNumber,
      required String name,
      required LocationModel location,
      required String emergencyContactNumber,
      required BloodType bloodType}) {
    return _AuthUserModel(
      id: id,
      phoneNumber: phoneNumber,
      name: name,
      location: location,
      emergencyContactNumber: emergencyContactNumber,
      bloodType: bloodType,
    );
  }
}

/// @nodoc
const $AuthUserModel = _$AuthUserModelTearOff();

/// @nodoc
mixin _$AuthUserModel {
  String get id => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  LocationModel get location => throw _privateConstructorUsedError;
  String get emergencyContactNumber => throw _privateConstructorUsedError;
  BloodType get bloodType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthUserModelCopyWith<AuthUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUserModelCopyWith<$Res> {
  factory $AuthUserModelCopyWith(
          AuthUserModel value, $Res Function(AuthUserModel) then) =
      _$AuthUserModelCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String phoneNumber,
      String name,
      LocationModel location,
      String emergencyContactNumber,
      BloodType bloodType});

  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class _$AuthUserModelCopyWithImpl<$Res>
    implements $AuthUserModelCopyWith<$Res> {
  _$AuthUserModelCopyWithImpl(this._value, this._then);

  final AuthUserModel _value;
  // ignore: unused_field
  final $Res Function(AuthUserModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? emergencyContactNumber = freezed,
    Object? bloodType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      emergencyContactNumber: emergencyContactNumber == freezed
          ? _value.emergencyContactNumber
          : emergencyContactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bloodType: bloodType == freezed
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType,
    ));
  }

  @override
  $LocationModelCopyWith<$Res> get location {
    return $LocationModelCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$AuthUserModelCopyWith<$Res>
    implements $AuthUserModelCopyWith<$Res> {
  factory _$AuthUserModelCopyWith(
          _AuthUserModel value, $Res Function(_AuthUserModel) then) =
      __$AuthUserModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String phoneNumber,
      String name,
      LocationModel location,
      String emergencyContactNumber,
      BloodType bloodType});

  @override
  $LocationModelCopyWith<$Res> get location;
}

/// @nodoc
class __$AuthUserModelCopyWithImpl<$Res>
    extends _$AuthUserModelCopyWithImpl<$Res>
    implements _$AuthUserModelCopyWith<$Res> {
  __$AuthUserModelCopyWithImpl(
      _AuthUserModel _value, $Res Function(_AuthUserModel) _then)
      : super(_value, (v) => _then(v as _AuthUserModel));

  @override
  _AuthUserModel get _value => super._value as _AuthUserModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? phoneNumber = freezed,
    Object? name = freezed,
    Object? location = freezed,
    Object? emergencyContactNumber = freezed,
    Object? bloodType = freezed,
  }) {
    return _then(_AuthUserModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      emergencyContactNumber: emergencyContactNumber == freezed
          ? _value.emergencyContactNumber
          : emergencyContactNumber // ignore: cast_nullable_to_non_nullable
              as String,
      bloodType: bloodType == freezed
          ? _value.bloodType
          : bloodType // ignore: cast_nullable_to_non_nullable
              as BloodType,
    ));
  }
}

/// @nodoc

class _$_AuthUserModel extends _AuthUserModel {
  const _$_AuthUserModel(
      {required this.id,
      required this.phoneNumber,
      required this.name,
      required this.location,
      required this.emergencyContactNumber,
      required this.bloodType})
      : super._();

  @override
  final String id;
  @override
  final String phoneNumber;
  @override
  final String name;
  @override
  final LocationModel location;
  @override
  final String emergencyContactNumber;
  @override
  final BloodType bloodType;

  @override
  String toString() {
    return 'AuthUserModel(id: $id, phoneNumber: $phoneNumber, name: $name, location: $location, emergencyContactNumber: $emergencyContactNumber, bloodType: $bloodType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuthUserModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.emergencyContactNumber, emergencyContactNumber) &&
            const DeepCollectionEquality().equals(other.bloodType, bloodType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(emergencyContactNumber),
      const DeepCollectionEquality().hash(bloodType));

  @JsonKey(ignore: true)
  @override
  _$AuthUserModelCopyWith<_AuthUserModel> get copyWith =>
      __$AuthUserModelCopyWithImpl<_AuthUserModel>(this, _$identity);
}

abstract class _AuthUserModel extends AuthUserModel {
  const factory _AuthUserModel(
      {required String id,
      required String phoneNumber,
      required String name,
      required LocationModel location,
      required String emergencyContactNumber,
      required BloodType bloodType}) = _$_AuthUserModel;
  const _AuthUserModel._() : super._();

  @override
  String get id;
  @override
  String get phoneNumber;
  @override
  String get name;
  @override
  LocationModel get location;
  @override
  String get emergencyContactNumber;
  @override
  BloodType get bloodType;
  @override
  @JsonKey(ignore: true)
  _$AuthUserModelCopyWith<_AuthUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}
