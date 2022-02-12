// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'location_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$LocationStateTearOff {
  const _$LocationStateTearOff();

  _LocationState call(
      {required LocationModel exactLocation,
      required PermissionStateUnion locationPermissionStatus,
      required bool isLocationServicesEnabled,
      required bool isLocationUpdateInProgress}) {
    return _LocationState(
      exactLocation: exactLocation,
      locationPermissionStatus: locationPermissionStatus,
      isLocationServicesEnabled: isLocationServicesEnabled,
      isLocationUpdateInProgress: isLocationUpdateInProgress,
    );
  }
}

/// @nodoc
const $LocationState = _$LocationStateTearOff();

/// @nodoc
mixin _$LocationState {
  LocationModel get exactLocation => throw _privateConstructorUsedError;
  PermissionStateUnion get locationPermissionStatus =>
      throw _privateConstructorUsedError;
  bool get isLocationServicesEnabled => throw _privateConstructorUsedError;
  bool get isLocationUpdateInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocationStateCopyWith<LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationStateCopyWith<$Res> {
  factory $LocationStateCopyWith(
          LocationState value, $Res Function(LocationState) then) =
      _$LocationStateCopyWithImpl<$Res>;
  $Res call(
      {LocationModel exactLocation,
      PermissionStateUnion locationPermissionStatus,
      bool isLocationServicesEnabled,
      bool isLocationUpdateInProgress});

  $LocationModelCopyWith<$Res> get exactLocation;
  $PermissionStateUnionCopyWith<$Res> get locationPermissionStatus;
}

/// @nodoc
class _$LocationStateCopyWithImpl<$Res>
    implements $LocationStateCopyWith<$Res> {
  _$LocationStateCopyWithImpl(this._value, this._then);

  final LocationState _value;
  // ignore: unused_field
  final $Res Function(LocationState) _then;

  @override
  $Res call({
    Object? exactLocation = freezed,
    Object? locationPermissionStatus = freezed,
    Object? isLocationServicesEnabled = freezed,
    Object? isLocationUpdateInProgress = freezed,
  }) {
    return _then(_value.copyWith(
      exactLocation: exactLocation == freezed
          ? _value.exactLocation
          : exactLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      locationPermissionStatus: locationPermissionStatus == freezed
          ? _value.locationPermissionStatus
          : locationPermissionStatus // ignore: cast_nullable_to_non_nullable
              as PermissionStateUnion,
      isLocationServicesEnabled: isLocationServicesEnabled == freezed
          ? _value.isLocationServicesEnabled
          : isLocationServicesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocationUpdateInProgress: isLocationUpdateInProgress == freezed
          ? _value.isLocationUpdateInProgress
          : isLocationUpdateInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $LocationModelCopyWith<$Res> get exactLocation {
    return $LocationModelCopyWith<$Res>(_value.exactLocation, (value) {
      return _then(_value.copyWith(exactLocation: value));
    });
  }

  @override
  $PermissionStateUnionCopyWith<$Res> get locationPermissionStatus {
    return $PermissionStateUnionCopyWith<$Res>(_value.locationPermissionStatus,
        (value) {
      return _then(_value.copyWith(locationPermissionStatus: value));
    });
  }
}

/// @nodoc
abstract class _$LocationStateCopyWith<$Res>
    implements $LocationStateCopyWith<$Res> {
  factory _$LocationStateCopyWith(
          _LocationState value, $Res Function(_LocationState) then) =
      __$LocationStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {LocationModel exactLocation,
      PermissionStateUnion locationPermissionStatus,
      bool isLocationServicesEnabled,
      bool isLocationUpdateInProgress});

  @override
  $LocationModelCopyWith<$Res> get exactLocation;
  @override
  $PermissionStateUnionCopyWith<$Res> get locationPermissionStatus;
}

/// @nodoc
class __$LocationStateCopyWithImpl<$Res>
    extends _$LocationStateCopyWithImpl<$Res>
    implements _$LocationStateCopyWith<$Res> {
  __$LocationStateCopyWithImpl(
      _LocationState _value, $Res Function(_LocationState) _then)
      : super(_value, (v) => _then(v as _LocationState));

  @override
  _LocationState get _value => super._value as _LocationState;

  @override
  $Res call({
    Object? exactLocation = freezed,
    Object? locationPermissionStatus = freezed,
    Object? isLocationServicesEnabled = freezed,
    Object? isLocationUpdateInProgress = freezed,
  }) {
    return _then(_LocationState(
      exactLocation: exactLocation == freezed
          ? _value.exactLocation
          : exactLocation // ignore: cast_nullable_to_non_nullable
              as LocationModel,
      locationPermissionStatus: locationPermissionStatus == freezed
          ? _value.locationPermissionStatus
          : locationPermissionStatus // ignore: cast_nullable_to_non_nullable
              as PermissionStateUnion,
      isLocationServicesEnabled: isLocationServicesEnabled == freezed
          ? _value.isLocationServicesEnabled
          : isLocationServicesEnabled // ignore: cast_nullable_to_non_nullable
              as bool,
      isLocationUpdateInProgress: isLocationUpdateInProgress == freezed
          ? _value.isLocationUpdateInProgress
          : isLocationUpdateInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LocationState extends _LocationState {
  const _$_LocationState(
      {required this.exactLocation,
      required this.locationPermissionStatus,
      required this.isLocationServicesEnabled,
      required this.isLocationUpdateInProgress})
      : super._();

  @override
  final LocationModel exactLocation;
  @override
  final PermissionStateUnion locationPermissionStatus;
  @override
  final bool isLocationServicesEnabled;
  @override
  final bool isLocationUpdateInProgress;

  @override
  String toString() {
    return 'LocationState(exactLocation: $exactLocation, locationPermissionStatus: $locationPermissionStatus, isLocationServicesEnabled: $isLocationServicesEnabled, isLocationUpdateInProgress: $isLocationUpdateInProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LocationState &&
            const DeepCollectionEquality()
                .equals(other.exactLocation, exactLocation) &&
            const DeepCollectionEquality().equals(
                other.locationPermissionStatus, locationPermissionStatus) &&
            const DeepCollectionEquality().equals(
                other.isLocationServicesEnabled, isLocationServicesEnabled) &&
            const DeepCollectionEquality().equals(
                other.isLocationUpdateInProgress, isLocationUpdateInProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exactLocation),
      const DeepCollectionEquality().hash(locationPermissionStatus),
      const DeepCollectionEquality().hash(isLocationServicesEnabled),
      const DeepCollectionEquality().hash(isLocationUpdateInProgress));

  @JsonKey(ignore: true)
  @override
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      __$LocationStateCopyWithImpl<_LocationState>(this, _$identity);
}

abstract class _LocationState extends LocationState {
  const factory _LocationState(
      {required LocationModel exactLocation,
      required PermissionStateUnion locationPermissionStatus,
      required bool isLocationServicesEnabled,
      required bool isLocationUpdateInProgress}) = _$_LocationState;
  const _LocationState._() : super._();

  @override
  LocationModel get exactLocation;
  @override
  PermissionStateUnion get locationPermissionStatus;
  @override
  bool get isLocationServicesEnabled;
  @override
  bool get isLocationUpdateInProgress;
  @override
  @JsonKey(ignore: true)
  _$LocationStateCopyWith<_LocationState> get copyWith =>
      throw _privateConstructorUsedError;
}
