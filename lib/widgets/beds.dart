import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class BedsCount extends StatefulWidget {
  const BedsCount({Key? key}) : super(key: key);

  @override
  State<BedsCount> createState() => _BedsCountState();
}

class _BedsCountState extends State<BedsCount> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          beds(const Color(0xff0E3C6E), 'assets/whitebed.png',
              const Color(0xffFFFFFF), '4'),
          SizedBox(
            width: 15.w,
          ),
          beds(const Color(0xffFFFFFF), 'assets/blackbed.png',
              const Color(0xff000000), '4'),
          SizedBox(
            width: 15.w,
          ),
          beds(const Color(0xffFFFFFF), 'assets/blackbed.png',
              const Color(0xff000000), '4'),
          SizedBox(
            width: 15.w,
          ),
          beds(const Color(0xffFFFFFF), 'assets/blackbed.png',
              const Color(0xff000000), '4'),
          SizedBox(
            width: 15.w,
          ),
        ],
      ),
    );
  }
}

Widget beds(dynamic backColor, dynamic image, dynamic numColor, String number) {
  return Container(
      height: 24.h,
      width: 50.w,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff0E3C6E)),
          color: backColor,
          borderRadius: BorderRadius.circular(6.r)),
      child: Padding(
        padding: const EdgeInsets.all(3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              height: 27,
            ),
            const SizedBox(width: 5),
            Text(
              number,
              style: GoogleFonts.lato(
                  fontSize: 13.sp,
                  fontWeight: FontWeight.w600,
                  color: numColor),
            )
          ],
        ),
      ));
}
