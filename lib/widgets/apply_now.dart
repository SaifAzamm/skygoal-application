import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplyNow extends StatelessWidget {
  const ApplyNow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      decoration: BoxDecoration(
        color: const Color(0xff0E3C6E),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Center(
        child: Text(
          'Apply Now',
          style: GoogleFonts.lato(
              fontSize: 18.sp,
              color: const Color(0xffFFFFFF),
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
