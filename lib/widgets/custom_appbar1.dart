import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_app/widgets/textfield_mic.dart';

class CustomAppbar1 extends StatelessWidget {
  const CustomAppbar1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 145.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: const Color(0xff0E3C6E),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(20.r)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Find your own way',
                    style: GoogleFonts.lato(
                        fontSize: 18.sp,
                        color: const Color(0xffFFFFFF),
                        fontWeight: FontWeight.w800),
                  ),
                  const Icon(
                    Icons.notifications,
                    size: 21,
                    color: Color(0xffFFFFFF),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Search in 600 colleges around!',
                style: GoogleFonts.lato(
                    fontSize: 12.sp,
                    color: const Color(0xffFFFFFF),
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 25),
              const TextfieldMic()
            ],
          ),
        ));
  }
}
