import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FacilityList extends StatelessWidget {
  const FacilityList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 110,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            image('assets/hostelimage.png'),
            image('assets/hostelimage2.png'),
            image('assets/hostelimage.png'),
            image('assets/hostelimage2.png'),
            image('assets/hostelimage.png'),
            image('assets/hostelimage2.png'),
          ],
        ));
  }
}

Widget image(dynamic image) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Image.asset(
      image,
      height: 110.h,
    ),
  );
}
