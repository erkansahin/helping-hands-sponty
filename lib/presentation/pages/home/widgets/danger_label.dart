import 'package:flutter/material.dart';

class DangerLabel extends StatelessWidget {
  const DangerLabel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
