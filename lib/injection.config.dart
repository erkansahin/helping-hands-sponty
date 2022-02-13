// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/app_life_cycle/app_life_cycle_cubit.dart' as _i3;

import 'application/auth/auth_cubit.dart' as _i16;
import 'application/location/location_cubit.dart' as _i17;
import 'application/map/map_cubit.dart' as _i18;
import 'application/permission/permission_cubit.dart' as _i15;

import 'application/auth/auth_cubit.dart' as _i15;
import 'application/location/location_cubit.dart' as _i16;
import 'application/permission/permission_cubit.dart' as _i13;
import 'application/sign_up/sign_up_cubit.dart' as _i14;

import 'domain/auth/i_auth_service.dart' as _i7;
import 'domain/danger_reporting/i_danger_reporting_service.dart' as _i9;
import 'domain/geolocator/i_geolocator.dart' as _i11;
import 'domain/permission/i_permission_handler.dart' as _i13;
import 'infrastructure/auth/firebase_auth_service.dart' as _i8;

import 'infrastructure/core/injectable_module.dart' as _i19;
import 'infrastructure/danger_reporting/danger_reporting_service.dart' as _i10;
import 'infrastructure/geolocator/geolocator_service.dart' as _i12;
import 'infrastructure/permission/permission_handler_service.dart' as _i14;

import 'infrastructure/core/injectable_module.dart' as _i17;
import 'infrastructure/geolocator/geolocator_service.dart' as _i10;
import 'infrastructure/permission/permission_handler_service.dart' as _i12;

import 'presentation/routes/router.gr.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.singleton<_i3.AppLifeCycleCubit>(_i3.AppLifeCycleCubit());
  gh.singleton<_i4.AppRouter>(injectableModule.appRouter);
  gh.lazySingleton<_i5.FirebaseAuth>(() => injectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(() => injectableModule.firestore);
  gh.lazySingleton<_i7.IAuthService>(() => _i8.FirebaseAuthFacade(
      get<_i5.FirebaseAuth>(), get<_i6.FirebaseFirestore>()));

  gh.lazySingleton<_i9.IDangerReportingService>(
      () => _i10.DangerReportingService(get<_i6.FirebaseFirestore>()));
  gh.lazySingleton<_i11.IGeolocator>(() => _i12.GeoLocatorService());
  gh.factory<_i13.IPermissionHandler>(() => _i14.PermissionHandlerRepository());
  gh.lazySingleton<_i15.PermissionCubit>(() => _i15.PermissionCubit(
      get<_i13.IPermissionHandler>(), get<_i11.IGeolocator>()));
  gh.lazySingleton<_i16.AuthCubit>(
      () => _i16.AuthCubit(get<_i7.IAuthService>()));
  gh.lazySingleton<_i17.LocationCubit>(() => _i17.LocationCubit(
      get<_i15.PermissionCubit>(),

  gh.lazySingleton<_i9.IGeolocator>(() => _i10.GeoLocatorService());
  gh.factory<_i11.IPermissionHandler>(() => _i12.PermissionHandlerRepository());
  gh.lazySingleton<_i13.PermissionCubit>(() => _i13.PermissionCubit(
      get<_i11.IPermissionHandler>(), get<_i9.IGeolocator>()));
  gh.factory<_i14.SignUpCubit>(() => _i14.SignUpCubit(get<_i7.IAuthService>()));
  gh.lazySingleton<_i15.AuthCubit>(
      () => _i15.AuthCubit(get<_i7.IAuthService>()));
  gh.lazySingleton<_i16.LocationCubit>(() => _i16.LocationCubit(
      get<_i13.PermissionCubit>(),

      get<_i3.AppLifeCycleCubit>(),
      get<_i11.IGeolocator>(),
      get<_i7.IAuthService>()));
  gh.lazySingleton<_i18.MapCubit>(() =>
      _i18.MapCubit(get<_i9.IDangerReportingService>(), get<_i16.AuthCubit>()));
  return get;
}


class _$InjectableModule extends _i19.InjectableModule {}

class _$InjectableModule extends _i17.InjectableModule {}

