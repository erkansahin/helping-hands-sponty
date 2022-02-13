import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:helping_hands_sponty/application/auth/auth_cubit.dart';

class UserCard extends StatelessWidget {
  const UserCard({
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
      child: Container(
        alignment: Alignment.center,
        // color: Colors.red,
        width: 268.0,
        height: 101.0,
        child: Stack(
          // fit: StackFit.expand,
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 4,
                  sigmaY: 4,
                ),
                child: Container(
                  width: 248.0,
                  height: 81.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xA14E4949),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -4,
              child: BlocBuilder<AuthCubit, AuthState>(
                builder: (context, state) {
                  return Container(
                    width: 248.0,
                    height: 81.0,
                    decoration: BoxDecoration(
                      // color: Colors.red.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(16),
                      // border: Border.all(
                      //   width: 1.0,
                      //   color: const Color(0x40000000),
                      // ),
                      boxShadow: const [
                        BoxShadow(
                          blurStyle: BlurStyle.outer,
                          // color: Color(0x40000000),
                          offset: Offset(0, 4),
                          blurRadius: 4.0,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 18),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              "assets/svg/profile.svg",
                              // color: Colors.white,
                              // width: 24,
                              // height: 24,
                            ),
                            Text(
                              state.userModel.bloodTypeString,
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              softWrap: false,
                              overflow: TextOverflow.ellipsis,
                              style: GoogleFonts.quicksand(
                                color: const Color(0xFFFFFFFF),
                                fontSize: 12,
                                // letterSpacing: -0.41,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 18),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.userModel.name,
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.quicksand(
                                  color: const Color(0xFFFFFFFF),
                                  fontSize: 16,
                                  // letterSpacing: -0.41,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 2),
                              Text(
                                state.userModel.phoneNumber,
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.quicksand(
                                  color: const Color(0xFFFFFFFF),
                                  fontSize: 12,
                                  // letterSpacing: -0.41,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "${state.userModel.emergencyContactName}:",
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.quicksand(
                                  color: const Color(0xFFFFFFFF),
                                  fontSize: 8,
                                  // letterSpacing: -0.41,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                state.userModel.emergencyContactNumber,
                                textAlign: TextAlign.start,
                                maxLines: 1,
                                softWrap: false,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.quicksand(
                                  color: const Color(0xFFFFFFFF),
                                  fontSize: 12,
                                  // letterSpacing: -0.41,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 12),
                        SvgPicture.asset(
                          "assets/svg/edit.svg",
                          // color: Colors.white,
                          // width: 24,
                          // height: 24,
                        ),
                        const SizedBox(width: 10),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
