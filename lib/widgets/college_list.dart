import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CollegeList extends StatelessWidget {
  final dynamic image;
  final String collegeName;
  const CollegeList({Key? key, required this.image, required this.collegeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: Container(
        height: 200.h,
        width: 300.w,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2.r,
                blurRadius: 8.r,
                offset: const Offset(0, 7))
          ],
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(18.r),
        ),
        child: Column(
          children: [
            //image
            Stack(
              children: [
                Align(
                    alignment: Alignment.topCenter, child: Image.asset(image)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                    'assets/iconShare.png',
                    height: 30.h,
                    width: 30.w,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topRight,
                      child: saveIcon(30.h, 30.w, 23)),
                )
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(
                right: 12,
                left: 12,
                top: 9,
              ),
              child: Column(
                children: [
                  //title

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        collegeName,
                        style: GoogleFonts.lato(
                            fontSize: 13.sp,
                            color: const Color(0xff000000),
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        height: 20.h,
                        width: 45.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.r),
                            color: const Color(0xff27C200)),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' 4.3',
                                style: GoogleFonts.lato(
                                    fontSize: 12.sp,
                                    color: const Color(0xffFFFFFF),
                                    fontWeight: FontWeight.w700),
                              ),
                              const Icon(
                                Icons.star,
                                color: Color(0xffFFFFFF),
                                size: 16,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5),

                  //subtitle

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          'Lorem ipsum dolor sit amet consddf dfdffd\nelf fdf sd fesdf sed nec fdeee',
                          textAlign: TextAlign.start,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.lato(
                              height: 1.5,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w800,
                              color: const Color(0xff8E8E8E))),
                      Container(
                        height: 20.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7.r),
                            color: const Color(0xff0E3C6E)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            'Apply Now',
                            style: GoogleFonts.lato(
                                fontSize: 11.sp,
                                color: const Color(0xffFFFFFF),
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),

                  //bottom lines
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/iconLike.png',
                            height: 20.h,
                            width: 20.w,
                          ),
                          Text('More than 1000+ students have been placed',
                              style: GoogleFonts.lato(
                                  height: 1.5,
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xff8E8E8E))),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.remove_red_eye,
                            color: Color(0xff8E8E8E),
                            size: 13,
                          ),
                          const SizedBox(width: 3),
                          Text(
                            '468+',
                            style: GoogleFonts.lato(
                                fontSize: 8.sp,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xff8E8E8E)),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget saveIcon(double newheight, double newweight, double iconsize) {
  return Container(
      height: newheight,
      width: newweight,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffFFFFFF),
      ),
      child: Icon(
        Icons.bookmark_border_sharp,
        color: const Color(0xff000000),
        size: iconsize,
      ));
}
