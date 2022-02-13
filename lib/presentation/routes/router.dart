import 'package:auto_route/auto_route.dart';
import '../pages/landing/landing_page.dart';
import '../pages/login/login_page.dart';
import '../pages/home/home_page.dart';
import '../pages/signup/signup_page.dart';

@CustomAutoRouter(
  transitionsBuilder: TransitionsBuilders.fadeIn,
  durationInMilliseconds: 200,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage),
    AutoRoute(page: LandingPage, initial: true),
    AutoRoute(page: SignupPage),
    AutoRoute(page: LoginPage),
  ],
)
class $AppRouter {}
