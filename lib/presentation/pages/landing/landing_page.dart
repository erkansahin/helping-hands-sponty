import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:helping_hands_sponty/application/auth/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../routes/router.gr.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      _timer = Timer(const Duration(milliseconds: 2500), () {
        final bool isUserCheckedFromAuthService =
            context.read<AuthCubit>().state.isUserCheckedFromAuthService;
        final bool isLoggedIn = context.read<AuthCubit>().state.isLoggedIn;
        print("isLoggedIn: $isLoggedIn");
        if (isLoggedIn) {
          AutoRouter.of(context).replace(const HomeRoute());
        } else if (!isLoggedIn && isUserCheckedFromAuthService) {
          AutoRouter.of(context).replace(const LoginRoute());
        }
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listenWhen: (p, c) =>
          p.isUserCheckedFromAuthService != c.isUserCheckedFromAuthService &&
          c.isUserCheckedFromAuthService,
      listener: (context, state) {
        final bool isUserLoggedIn = state.isLoggedIn;

        if (isUserLoggedIn) {
          AutoRouter.of(context).replace(const HomeRoute());
        } else {
          AutoRouter.of(context).replace(const LoginRoute());
        }
      },
      child: const Scaffold(
        body: Center(
          child: Text("Splash page "),
        ),
      ),
    );
  }
}
