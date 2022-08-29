import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skygoal_app/screens/home_3.dart';
import 'package:skygoal_app/widgets/college_list.dart';

class CustomAppBar2 extends StatelessWidget {
  const CustomAppBar2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 65.h,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Color(0xff0E3C6E),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 25, right: 22, left: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 35.h,
                width: 35.w,
                decoration: const BoxDecoration(
                  color: Color(0xffFFFFFF),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Home3(),
                          ));
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 20,
                      color: Color(0xff000000),
                    )),
              ),
              saveIcon(35.h, 35.w, 20)
            ],
          ),
        ),
      ],
    );
  }
}
