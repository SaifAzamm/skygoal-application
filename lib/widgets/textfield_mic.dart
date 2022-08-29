import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextfieldMic extends StatelessWidget {
  const TextfieldMic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 230.w,
          child: TextField(
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                fillColor: const Color(0xffFFFFFF),
                filled: true,
                prefixIcon: const Icon(
                  Icons.search,
                  size: 10,
                  color: Color(0xffD6D6D6),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.r),
                ),
                hintText: "Search for colleges, schools.....",
                hintStyle:
                    TextStyle(fontSize: 11.sp, color: const Color(0xffD6D6D6))),
          ),
        ),
        // SizedBox(
        //   height: 40.h,
        //   width: 230.w,
        //   child: TextField(
        //     // textAlignVertical: TextAlignVertical.bottom,
        //     decoration: InputDecoration(
        //         filled: true,
        //         fillColor: const Color(0xffFFFFFF),
        //         border: OutlineInputBorder(
        //           borderRadius: BorderRadius.circular(15.r),
        //         ),
        //         prefixIcon:const Icon(
        //           Icons.search,
        //           size: 15,
        //         ),
        //         hintText: "Search for colleges,schools.....",
        //         hintStyle: GoogleFonts.poppins(
        //             fontSize: 11.sp,
        //             color:const Color.fromARGB(255, 196, 195, 195),
        //             fontWeight: FontWeight.w600)),
        //   ),
        // ),
        Container(
          height: 41.h,
          width: 41.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.r),
              color: const Color(0xffFFFFFF)),
          child: const Center(
            child: Icon(
              Icons.mic,
              color: Color(0xff0E3C6E),
            ),
          ),
        )
      ],
    );
  }
}
