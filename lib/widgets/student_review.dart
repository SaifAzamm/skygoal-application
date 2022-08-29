import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class StudentReview extends StatelessWidget {
  const StudentReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        studentReview('assets/student3.png'),
        const SizedBox(width: 20),
        studentReview('assets/student2.png'),
        const SizedBox(width: 20),
        studentReview('assets/student3.png'),
        const SizedBox(width: 20),
        studentReview('assets/student4.png'),
        const SizedBox(width: 20),
        Container(
          height: 40.h,
          width: 60.w,
          decoration: BoxDecoration(
              color: const Color(0xffE7E6E6),
              borderRadius: BorderRadius.circular(15.r)),
          child: Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Text(
              '+12',
              style: GoogleFonts.lato(
                  fontSize: 12.sp,
                  color: const Color(0xff0E3C6E),
                  fontWeight: FontWeight.w800),
            ),
          ),
        )
      ],
    );
  }
}

Widget studentReview(
  dynamic image,
) {
  return Container(
    height: 40.h,
    width: 40.w,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.r)),
    child: Image.asset(
      image,
      fit: BoxFit.cover,
    ),
  );
}
