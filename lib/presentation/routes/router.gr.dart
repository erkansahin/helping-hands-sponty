// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../domain/auth/auth_user_model.dart' as _i7;
import '../pages/home/home_page.dart' as _i1;
import '../pages/landing/landing_page.dart' as _i2;
import '../pages/login/login_page.dart' as _i4;
import '../pages/signup/signup_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.HomePage(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    LandingRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.LandingPage(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    SignupRoute.name: (routeData) {
      final args = routeData.argsAs<SignupRouteArgs>(
          orElse: () => const SignupRouteArgs());
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child:
              _i3.SignupPage(key: args.key, edit: args.edit, user: args.user),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    LoginRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i4.LoginPage(),
          transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i5.RouteConfig(LandingRoute.name, path: '/'),
        _i5.RouteConfig(SignupRoute.name, path: '/signup-page'),
        _i5.RouteConfig(LoginRoute.name, path: '/login-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.LandingPage]
class LandingRoute extends _i5.PageRouteInfo<void> {
  const LandingRoute() : super(LandingRoute.name, path: '/');

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i3.SignupPage]
class SignupRoute extends _i5.PageRouteInfo<SignupRouteArgs> {
  SignupRoute({_i6.Key? key, bool? edit, _i7.AuthUserModel? user})
      : super(SignupRoute.name,
            path: '/signup-page',
            args: SignupRouteArgs(key: key, edit: edit, user: user));

  static const String name = 'SignupRoute';
}

class SignupRouteArgs {
  const SignupRouteArgs({this.key, this.edit, this.user});

  final _i6.Key? key;

  final bool? edit;

  final _i7.AuthUserModel? user;

  @override
  String toString() {
    return 'SignupRouteArgs{key: $key, edit: $edit, user: $user}';
  }
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-page');

  static const String name = 'LoginRoute';
}
