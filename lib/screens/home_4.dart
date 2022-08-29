import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_app/screens/hostel_facility.dart';
import 'package:skygoal_app/widgets/apply_now.dart';
import 'package:skygoal_app/widgets/custom_appbar2.dart';
import 'package:skygoal_app/widgets/student_review.dart';

class Home4 extends StatefulWidget {
  const Home4({Key? key}) : super(key: key);

  @override
  State<Home4> createState() => _Home4State();
}

class _Home4State extends State<Home4> {
  bool isShowHostalFacility = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  const CustomAppBar2(),
                  Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        'assets/GHJK.png',
                        height: 150.h,
                        fit: BoxFit.cover,
                        width: MediaQuery.of(context).size.width,
                      )),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'GHJK Engineering college',
                              style: GoogleFonts.lato(
                                  fontSize: 18.sp,
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(height: 10),
                            Text(
                                'Lorem ipsum dolor  amet, consectutur adpicing elit\nFellis consetetur nulla phaetra praesent hendrerit\nvulputate viverra. Pellentesque  tempus faucibus\nest.',
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.lato(
                                    height: 1.5,
                                    fontSize: 9.5.sp,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xff8E8E8E))),
                          ],
                        ),
                        Image.asset(
                          'assets/RatingIcon.png',
                          height: 50,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 33.h,
                    decoration: const BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(0, 2),
                              blurRadius: 2,
                              spreadRadius: 0,
                              color: Color.fromARGB(255, 228, 226, 226))
                        ],
                        color: Color(0xffF8F8F8),
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 226, 223, 223)),
                            top: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 226, 223, 223)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                            onTap: () {
                              isShowHostalFacility = false;
                              setState(() {});
                            },
                            child: Query(
                                'About college',
                                !isShowHostalFacility
                                    ? Colors.red
                                    : Colors.black)),
                        GestureDetector(
                          onTap: () {
                            isShowHostalFacility = true;
                            setState(() {});
                          },
                          child: Query('Hostel facility',
                              isShowHostalFacility ? Colors.red : Colors.black),
                        ),
                        Query('Q & A', Colors.black),
                        Query('Events', Colors.black)
                      ],
                    ),
                  ),
                  isShowHostalFacility
                      ? const HostelFacility()
                      : Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, bottom: 25, top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Descripton',
                                style: GoogleFonts.lato(
                                    fontSize: 14.sp,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                  'Lorem ipsum dolor  amet, consectutur adpicing elit decapro\nFellis consetetur nulla phaetra praesent hendrerit alberto\nvulputate viverra. Pellentesque  tempus faucibus delrio hurr\nest. Commondo habitant movi quis phareta posuere lacasta\nmauris. Morbi sit risus diam amet avotte we. Nisl de peppel\npellentesque nec faciliesulteis.',
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.lato(
                                      height: 1.5,
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xff8E8E8E))),
                              const SizedBox(height: 30),
                              Text(
                                'Location',
                                style: GoogleFonts.lato(
                                    fontSize: 14.sp,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 20),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(15.r),
                                child: Image.asset(
                                  'assets/map.png',
                                  fit: BoxFit.cover,
                                  height: 138.h,
                                  width: MediaQuery.of(context).size.width,
                                ),
                              ),
                              const SizedBox(height: 35),
                              Text(
                                'Student Review',
                                style: GoogleFonts.lato(
                                    fontSize: 14.sp,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w700),
                              ),
                              const SizedBox(height: 15),
                              const StudentReview(),
                              const SizedBox(height: 20),
                              Container(
                                height: 102.h,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(15.r),
                                    boxShadow: const [
                                      BoxShadow(
                                          spreadRadius: 6,
                                          blurRadius: 8,
                                          color: Color.fromARGB(
                                              255, 243, 243, 245))
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'Arun Sai',
                                        style: GoogleFonts.lato(
                                            fontSize: 12.sp,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w700),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                          'Lorem  ipsum  dolor  amet, consectutur  adpicing  gunci \nFellis  consetetur  nulla phaetra  praesent hendrerit  bella\nvulputate  viverra. Pellentesque  tempus  faucibus  chaoo',
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.ellipsis,
                                          style: GoogleFonts.lato(
                                              height: 1.5,
                                              fontSize: 10.sp,
                                              fontWeight: FontWeight.w600,
                                              color: const Color(0xff8E8E8E))),
                                      const SizedBox(height: 5),
                                      RatingBar.builder(
                                        itemSize: 15,
                                        initialRating: 3,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        allowHalfRating: true,
                                        itemCount: 5,
                                        // itemPadding:
                                        //     const EdgeInsets.symmetric(horizontal: 2.0),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        onRatingUpdate: (rating) {},
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 80)
                            ],
                          ),
                        ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25),
              child: Align(
                  alignment: AlignmentDirectional.bottomCenter,
                  child: ApplyNow()),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: non_constant_identifier_names
Widget Query(String query, dynamic colorss) {
  return Text(query,
      style: GoogleFonts.lato(
          fontSize: 11.sp, fontWeight: FontWeight.w600, color: colorss));
}
