import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skygoal_app/screens/home_3.dart';
import 'package:skygoal_app/widgets/categories.dart';

import 'package:skygoal_app/widgets/custom_appbar1.dart';

class Home1 extends StatefulWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  State<Home1> createState() => _Home1State();
}

class _Home1State extends State<Home1> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFFFFF),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xff0E3C6E),
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              // iconFun(path:Icons.home,context: context )
              icon: Icon(
                Icons.home,
                size: 25,
              ),
              label: 'Home',
              //  backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/saves.png')),
              label: 'Saved',
              // backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/savem.png'),
                size: 25,
              ),
              label: 'Saved',
              // backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 25),
              label: 'Account',
              //   backgroundColor: Colors.pink,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.white,
          onTap: _onItemTapped,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomAppbar1(),
              const SizedBox(height: 45),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isDismissible: true,
                    backgroundColor: const Color(0xffFFFFFF),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.r),
                            topRight: Radius.circular(20.r))),
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 30, right: 30, bottom: 40),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Sort by',
                                  style: GoogleFonts.lato(
                                      fontSize: 16.sp,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w800),
                                ),
                                const Icon(
                                  Icons.close,
                                  color: Color.fromARGB(40, 0, 0, 0),
                                  size: 30,
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            const Divider(thickness: 2),
                            const SizedBox(height: 20),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Home3(),
                                    ));
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'assets/bachelorOfTechnology.png',
                                        height: 22,
                                      ),
                                      const SizedBox(width: 10),
                                      Text(
                                        'Bachelor of Technology',
                                        style: GoogleFonts.lato(
                                            fontSize: 16.sp,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                  const Icon(
                                    Icons.radio_button_on,
                                    color: Color(0xff0E3C6E),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/bachelorOfArch.png',
                                      height: 22,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      'Bachelor of Architecture',
                                      style: GoogleFonts.lato(
                                          fontSize: 16.sp,
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                const Icon(Icons.radio_button_off,
                                    color: Color(0xff0E3C6E))
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/pharmacy.png',
                                      height: 22,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      'Pharmacy',
                                      style: GoogleFonts.lato(
                                          fontSize: 16.sp,
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                const Icon(Icons.radio_button_off,
                                    color: Color(0xff0E3C6E))
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/low.png',
                                      height: 22,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      'Law',
                                      style: GoogleFonts.lato(
                                          fontSize: 16.sp,
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                const Icon(Icons.radio_button_off,
                                    color: Color(0xff0E3C6E))
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/management.png',
                                      height: 22,
                                    ),
                                    const SizedBox(width: 10),
                                    Text(
                                      'Management',
                                      style: GoogleFonts.lato(
                                          fontSize: 16.sp,
                                          color: const Color(0xff000000),
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                                const Icon(Icons.radio_button_off,
                                    color: Color(0xff0E3C6E))
                              ],
                            )
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const Categories(
                    imageUrl: 'assets/topCollege.png',
                    title: 'Top College',
                    subTitle:
                        """Search      through      thousand      0f\naccrecited  colleges and  universities \nonline to find  the  right one for you.\nApply in 3 min, and connect with your\nfuture.""",
                    row1: '+126',
                    row2: "College"),
              ),
              const Categories(
                  imageUrl: 'assets/topSchool.png',
                  subTitle:
                      "Searching for the best school for you\njust got easier! With our advanced\nSchool Search, you can easily filter out\nthe school that are fit for you",
                  title: 'Top Schools',
                  row1: '+106',
                  row2: 'Schools'),
              const Categories(
                  imageUrl: 'assets/exam.png',
                  title: "Exams",
                  subTitle:
                      "Find an end to end information about\nthe exams that are happening in India",
                  row1: "+16",
                  row2: "exams"),
            ],
          ),
        ),
      ),
    );
  }
}
