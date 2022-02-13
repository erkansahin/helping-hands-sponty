import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helping_hands_sponty/presentation/pages/home/home_page.dart';

class DisasterGatheringPopup extends StatelessWidget {
  const DisasterGatheringPopup({
    Key? key,
    required this.disasterGatheringSpot,
  }) : super(key: key);

  final DisasterGatheringSpot disasterGatheringSpot;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: 196,
      height: 70.0,
      decoration: BoxDecoration(
        color: const Color(0x30F985DF),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          width: 1,
          color: const Color(0xFFD41A7F),
        ),
        boxShadow: const [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  disasterGatheringSpot.name,
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.fade,
                  style: GoogleFonts.quicksand(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 16,
                    // letterSpacing: -0.41,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "capacity:${disasterGatheringSpot.capacity.toString()}",
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.quicksand(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 12,
                    // letterSpacing: -0.41,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "fullness:${disasterGatheringSpot.fullness.toStringAsFixed(1)}",
                  textAlign: TextAlign.start,
                  maxLines: 1,
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.quicksand(
                    color: const Color(0xFFFFFFFF),
                    fontSize: 12,
                    // letterSpacing: -0.41,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                "assets/svg/current.svg",
                color: Colors.white,
                width: 16,
                height: 16,
              ),
              Text(
                "5km",
                textAlign: TextAlign.center,
                maxLines: 1,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.quicksand(
                  color: const Color(0xFFFFFFFF),
                  fontSize: 10,
                  // letterSpacing: -0.41,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
