import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DangerButton extends StatelessWidget {
  const DangerButton({
    Key? key,
    required this.isInDanger,
    required this.onPressed,
  }) : super(key: key);

  final bool isInDanger;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(16),
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Ink(
          width: 236.0,
          height: 75.0,
          decoration: BoxDecoration(
            gradient: isInDanger ? isNotInDangerGradient : isInDangerGradient,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Color(0x80594747),
                offset: Offset(0, 4),
                blurRadius: 4.0,
              ),
            ],
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(16),
            onTap: () {
              onPressed();
            },
            splashColor: Colors.teal,
            child: Center(
              child: Text(
                isInDanger ? "I AM SAFE" : "EMERGENCY!",
                textAlign: TextAlign.center,
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.quicksand(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 28,
                  // letterSpacing: -0.41,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

//#
//#

//16

LinearGradient isInDangerGradient = const LinearGradient(
  colors: [
    Color(0xFFE85454),
    Color(0xFFED3C3C),
  ],
  begin: Alignment(0, -1),
  end: Alignment(1, 0.2),
);

LinearGradient isNotInDangerGradient = const LinearGradient(
  colors: [
    Color(0xFF57E854),
    Color(0xFF40ED3C),
  ],
  begin: Alignment(0, -1),
  end: Alignment(1, 0.2),
);
