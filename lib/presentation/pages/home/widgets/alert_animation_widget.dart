import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AlertAnimation extends StatelessWidget {
  const AlertAnimation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Lottie.asset('assets/lottie/18548-light-danger.json');
    // return Lottie.asset('assets/lottie/75320-alert-icon-exclamation.json');
    //56949-alert1.json
    //lf30_editor_6fjxn8m1
    //alert2
    return Container(
      child: Lottie.asset(
        'assets/lottie/alert2.json',
      ),
    );
  }
}
