import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  final dynamic imageUrl;
  final String title;
  final String subTitle;
  final String row1;
  final String row2;

  const Categories(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.subTitle,
      required this.row1,
      required this.row2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        height: 125.h,
        width: 300.h,
        decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
        ),
        child: Stack(
          children: [
            Image.asset(
              imageUrl,
              fit: BoxFit.fill,
              width: 320.w,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: GoogleFonts.lato(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xffFFFFFF)),
                  ),
                  Text(
                    subTitle,
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.ellipsis,
                    style: GoogleFonts.lato(
                        height: 1.5,
                        fontSize: 9.sp,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xffFFFFFF)),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        row1,
                        style: GoogleFonts.lato(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w800,
                            color: const Color(0xff000000)),
                      ),
                      Text(
                        row2,
                        style: GoogleFonts.lato(
                            fontSize: 8.sp,
                            fontWeight: FontWeight.w800,
                            color: const Color(0xff848484)),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
