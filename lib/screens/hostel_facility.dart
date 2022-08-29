import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_app/widgets/facility_list.dart';

import '../widgets/beds.dart';

class HostelFacility extends StatelessWidget {
  const HostelFacility({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const BedsCount(),
        const FacilityList(),
        Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'GHJK Engineering college',
                    style: GoogleFonts.lato(
                        fontSize: 16.sp,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700),
                  ),
                  Image.asset(
                    'assets/ratingIconHor.png',
                    height: 20,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(
                    Icons.location_pin,
                    color: Color(0xff0E3C6E),
                    size: 17,
                  ),
                  const SizedBox(width: 10),
                  Text(
                    'Lorem ipsum dolor sit amel, consectur',
                    style: GoogleFonts.lato(
                        fontSize: 11.sp,
                        color: const Color(0xff4A4A4A),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                  'Lorem ipsum dolor sit amet, consectetur aipiscing  elit.\nNeque accumsan, scelerisque eget lectus ullamcorper a \nplacerat. Porta cras at pretium varius purus cursus. Morbi\njusto commando habitant morbi quis pharetra posuere\nmauris. Morbi sit risus, diam amet volupat quis, Nisi\npellentesque nec facilises ultrices.',
                  textAlign: TextAlign.start,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.lato(
                      height: 1.5,
                      fontSize: 11.5.sp,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xff969797))),
              const SizedBox(height: 30),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Facilities',
                  style: GoogleFonts.lato(
                      fontSize: 16.sp,
                      color: const Color(0xff000000),
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Image.asset(
                    'assets/collegeIcon.png',
                    height: 20,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    "College in 400 mtrs",
                    style: GoogleFonts.lato(
                        fontSize: 13.sp,
                        color: const Color(0xff4A4A4A),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Image.asset(
                    'assets/bathIcon.png',
                    height: 20,
                  ),
                  const SizedBox(width: 15),
                  Text(
                    "Bathrooms : 2",
                    style: GoogleFonts.lato(
                        fontSize: 13.sp,
                        color: const Color(0xff4A4A4A),
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 150),
      ],
    );
  }
}
