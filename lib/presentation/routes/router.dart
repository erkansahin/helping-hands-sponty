import 'package:auto_route/auto_route.dart';

import '../pages/landing/home_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
  ],
)
class $AppRouter {}
