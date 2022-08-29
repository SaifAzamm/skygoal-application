import 'package:flutter/material.dart';

// /// This Widget is the main application widget.

// class MyNavigationBar extends StatefulWidget {
//   const MyNavigationBar ({Key ?key}) : super(key: key);

//   @override
//   _MyNavigationBarState createState() => _MyNavigationBarState();
// }

// class _MyNavigationBarState extends State<MyNavigationBar > {
//   int _selectedIndex = 0;
//   // static const List<Widget> _widgetOptions = <Widget>[
//   //   Text('Home Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
//   //   Text('Search Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
//   //   Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
//   // ];

//   // void _onItemTapped(int index) {
//   //   setState(() {
//   //     _selectedIndex = index;
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       bottomNavigationBar: BottomNavigationBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home,size: 25,color: Color(0xffBBBBBB),),
//            label:'Search',
//             backgroundColor:  Color(0xff0E3C6E)
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.search,size: 25,color: Color(0xffBBBBBB)),
//             label: 'saved',
//             backgroundColor:  Color(0xff0E3C6E)
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person,size: 25,color: Color(0xffBBBBBB)),
//            label: 'saved',
//             backgroundColor:  Color(0xff0E3C6E),
//           ),
//             BottomNavigationBarItem(
//             icon: Icon(Icons.person,size: 25,color: Color(0xffBBBBBB)),
//            label: 'account',
//             backgroundColor:  Color(0xff0E3C6E),

//           ),
//         ],
//         type: BottomNavigationBarType.shifting,
//         currentIndex: _selectedIndex,
//         selectedItemColor: Color(0xffFFFFFF),
//         iconSize: 25,
//         elevation: 5
//       ),
//     );
//   }
// }

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNvigationtState();
}

class _BottomNvigationtState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff0E3C6E),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.saved_search),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save_sharp),
            label: 'School',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.person),
          //   label: 'School',
          // ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xffFFFFFF),
        onTap: _onItemTapped,
      ),
    );
  }
}
