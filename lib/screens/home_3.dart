import 'package:flutter/material.dart';
import 'package:skygoal_app/screens/home_4.dart';
import 'package:skygoal_app/widgets/college_list.dart';
import 'package:skygoal_app/widgets/custom_appbar1.dart';
import 'package:skygoal_app/widgets/horizontal_widget.dart';

class Home3 extends StatefulWidget {
  const Home3({Key? key}) : super(key: key);

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {
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
        backgroundColor: const Color(0xffFFFFFF),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppbar1(),
              const HorizontalWidget(),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home4(),
                        ));
                  },
                  child: const CollegeList(
                    image: 'assets/topCollege1.png',
                    collegeName: 'GHJK Engineering College',
                  )),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home4(),
                        ));
                  },
                  child: const CollegeList(
                    image: 'assets/topCollege2.png',
                    collegeName: 'Bachelor of Technology',
                  )),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Home4(),
                        ));
                  },
                  child: const CollegeList(
                    image: 'assets/topCollege3.png',
                    collegeName: 'Institute of Technology',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
