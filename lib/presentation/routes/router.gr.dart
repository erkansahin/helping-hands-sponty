// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../pages/home/home_page.dart' as _i1;
import '../pages/landing/landing_page.dart' as _i2;
import '../pages/signup_page.dart/signup_page.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i1.HomePage(),
          transitionsBuilder: _i4.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    LandingRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i2.LandingPage(),
          transitionsBuilder: _i4.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    },
    SignupRoute.name: (routeData) {
      return _i4.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i3.SignupPage(),
          transitionsBuilder: _i4.TransitionsBuilders.fadeIn,
          durationInMilliseconds: 200,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i4.RouteConfig(LandingRoute.name, path: '/'),
        _i4.RouteConfig(SignupRoute.name, path: '/signup-page')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-page');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.LandingPage]
class LandingRoute extends _i4.PageRouteInfo<void> {
  const LandingRoute() : super(LandingRoute.name, path: '/');

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i3.SignupPage]
class SignupRoute extends _i4.PageRouteInfo<void> {
  const SignupRoute() : super(SignupRoute.name, path: '/signup-page');

  static const String name = 'SignupRoute';
}
