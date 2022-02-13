import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helping_hands_sponty/application/auth/auth_cubit.dart';

class MyPinMarker extends StatelessWidget {
  const MyPinMarker({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: SizedBox(
        width: 50,
        height: 50,
        child: BlocSelector<AuthCubit, AuthState, bool>(
          selector: (state) {
            return state.isInDanger;
          },
          builder: (context, isInDanger) {
            return SvgPicture.asset(
              "assets/svg/mypin.svg",
              color: isInDanger ? Colors.red : Colors.green,
            );
          },
        ),
      ),
    );
  }
}
