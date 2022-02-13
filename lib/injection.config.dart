// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/app_life_cycle/app_life_cycle_cubit.dart' as _i3;
import 'application/auth/auth_cubit.dart' as _i19;
import 'application/location/location_cubit.dart' as _i20;
import 'application/map/map_cubit.dart' as _i21;
import 'application/permission/permission_cubit.dart' as _i17;
import 'application/sign_up/sign_up_cubit.dart' as _i18;
import 'domain/auth/i_auth_service.dart' as _i7;
import 'domain/danger_reporting/i_danger_reporting_service.dart' as _i9;
import 'domain/geolocator/i_geolocator.dart' as _i11;
import 'domain/help/i_help_service.dart' as _i13;
import 'domain/permission/i_permission_handler.dart' as _i15;
import 'infrastructure/auth/firebase_auth_service.dart' as _i8;
import 'infrastructure/core/injectable_module.dart' as _i22;
import 'infrastructure/danger_reporting/danger_reporting_service.dart' as _i10;
import 'infrastructure/geolocator/geolocator_service.dart' as _i12;
import 'infrastructure/help/help_service.dart' as _i14;
import 'infrastructure/permission/permission_handler_service.dart' as _i16;
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
  gh.lazySingleton<_i13.IHelpService>(
      () => _i14.HelpService(get<_i6.FirebaseFirestore>()));
  gh.factory<_i15.IPermissionHandler>(() => _i16.PermissionHandlerRepository());
  gh.lazySingleton<_i17.PermissionCubit>(() => _i17.PermissionCubit(
      get<_i15.IPermissionHandler>(), get<_i11.IGeolocator>()));
  gh.factory<_i18.SignUpCubit>(() => _i18.SignUpCubit(get<_i7.IAuthService>()));
  gh.lazySingleton<_i19.AuthCubit>(
      () => _i19.AuthCubit(get<_i7.IAuthService>()));
  gh.lazySingleton<_i20.LocationCubit>(() => _i20.LocationCubit(
      get<_i17.PermissionCubit>(),
      get<_i3.AppLifeCycleCubit>(),
      get<_i11.IGeolocator>(),
      get<_i7.IAuthService>()));
  gh.lazySingleton<_i21.MapCubit>(() =>
      _i21.MapCubit(get<_i9.IDangerReportingService>(), get<_i19.AuthCubit>()));
  return get;
}

class _$InjectableModule extends _i22.InjectableModule {}
