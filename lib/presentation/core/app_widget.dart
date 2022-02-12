import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

import '../../injection.dart';
import '../routes/router.gr.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final AppRouter _appRouter = getIt<AppRouter>();
  final BotToastNavigatorObserver botToastNavigatorObserver =
      BotToastNavigatorObserver();
  final botToastBuilder = BotToastInit();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      builder: botToastBuilder,
      routerDelegate: _appRouter.delegate(
        navigatorObservers: () => [botToastNavigatorObserver],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
      title: 'Helping Hands',
    );
  }
}
