import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helping_hands_sponty/application/permission/permission_cubit.dart';

import '../../application/app_life_cycle/app_life_cycle_cubit.dart';
import '../../application/auth/auth_cubit.dart';
import '../../application/location/location_cubit.dart';
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<LocationCubit>(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => getIt<AuthCubit>(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => getIt<AppLifeCycleCubit>(),
          lazy: false,
        ),
        BlocProvider(
          create: (context) => getIt<PermissionCubit>(),
          lazy: false,
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        builder: botToastBuilder,
        theme: ThemeData(
            textTheme: GoogleFonts.quicksandTextTheme(
          Theme.of(context).textTheme,
        )),
        routerDelegate: _appRouter.delegate(
          navigatorObservers: () => [botToastNavigatorObserver],
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        title: 'Helping Hands',
      ),
    );
  }
}
