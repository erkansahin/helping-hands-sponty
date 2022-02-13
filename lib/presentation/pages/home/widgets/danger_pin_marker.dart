import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:helping_hands_sponty/domain/auth/auth_user_model.dart';

class DangerPinMarker extends StatelessWidget {
  const DangerPinMarker({
    Key? key,
    required this.onPressed,
    required this.userModel,
  }) : super(key: key);

  final Function onPressed;
  final AuthUserModel userModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: SizedBox(
        width: 32,
        height: 32,
        child: SvgPicture.asset(
          "assets/svg/dangerpin.svg",
        ),
      ),
    );
  }
}
