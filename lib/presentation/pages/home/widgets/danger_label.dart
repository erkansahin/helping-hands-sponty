import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class DangerLabel extends StatelessWidget {
  const DangerLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      height: 36.0,
      decoration: BoxDecoration(
        color: const Color(0xFFE32A2A),
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Color(0x80594747),
            offset: Offset(0, 4),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Marquee(
        text:
            '🚨🚨We have alerted the authorities.🚨🚨          🚨🚨Help should be arriving soon.🚨🚨      ',
        style: GoogleFonts.quicksand(
          color: const Color(0xFFFFFFFF),
          fontSize: 14,
          // letterSpacing: -0.41,
          fontWeight: FontWeight.w600,
        ),
        scrollAxis: Axis.horizontal,
        crossAxisAlignment: CrossAxisAlignment.center,
        blankSpace: 80.0,
        velocity: 100.0,
        fadingEdgeStartFraction: 0.2,
        fadingEdgeEndFraction: 0.2,
        pauseAfterRound: Duration(seconds: 1),
        startPadding: 20.0,
        showFadingOnlyWhenScrolling: false,
        accelerationDuration: Duration(seconds: 1),
        accelerationCurve: Curves.linear,
        decelerationDuration: Duration(milliseconds: 500),
        decelerationCurve: Curves.easeOut,
      ),
    );
  }
}
