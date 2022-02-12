import 'package:auto_route/auto_route.dart';
import '../pages/signup_page.dart/signup_page.dart';

import '../pages/home/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage),
    AutoRoute(page: SignupPage, initial: true),
  ],
)
class $AppRouter {}
