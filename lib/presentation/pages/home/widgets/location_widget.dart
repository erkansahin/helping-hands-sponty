import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      width: 52,
      height: 52,
      decoration: const BoxDecoration(
        color: Color(0xA344FF62),
        shape: BoxShape.circle,
        // borderRadius: BorderRadius.circular(10),
        // border: Border.all(
        //   width: 1,
        //   color: const Color(0xFFD41A7F),
        // ),
        boxShadow: [
          BoxShadow(
            color: Color(0x40000000),
            offset: Offset(0, 4),
            blurRadius: 4.0,
          ),
        ],
      ),
    );
  }
}
