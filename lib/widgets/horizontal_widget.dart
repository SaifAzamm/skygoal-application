import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HorizontalWidget extends StatelessWidget {
  const HorizontalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Container(
        height: 25.h,
        color: const Color(0xffFFFFFF),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            horizontal('MVSH Engineering College'),
            horizontal('NIT Engineering Collage'),
            horizontal('SAG Engineering Collage'),
            horizontal('LNCT Engineering College')
          ],
        ),
      ),
    );
  }
}

Widget horizontal(String clgName) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Container(
        height: 25.h,
        width: 140.w,
        decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(5.r),
            border: Border.all(color: const Color(0xff000000), width: 0.2.w)),
        child: Center(
          child: Text(
            clgName,
            style: GoogleFonts.lato(
                fontSize: 10.sp,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500),
          ),
        )),
  );
}
