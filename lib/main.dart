// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:tiktokdownloader/screens/frontpage.dart';
import 'screens/download_page.dart';
import 'screens/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  void tapIndex(index) {
    setState(() {
      _controller.jumpToPage(index);
    });
  }

  PageController _controller = PageController();

  List<BottomNavigationBarItem> bottomNavList() {
    return [
      BottomNavigationBarItem(
        label: 'Home',
        icon: SvgPicture.asset(
          'assets/icon_home.svg',
          color: _currentIndex == 0 ? Colors.white : Colors.grey[400],
        ),
      ),
      BottomNavigationBarItem(
        label: 'My Downloads',
        icon: SvgPicture.asset(
          'assets/icon_mydownloads.svg',
          color: _currentIndex == 1 ? Colors.white : Colors.grey[400],
        ),
      ),
      BottomNavigationBarItem(
        label: 'Profile',
        icon: SvgPicture.asset(
          'assets/icon_profile.svg',
          color: _currentIndex == 2 ? Colors.white : Colors.grey[400],
        ),
      ),
    ];
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              FrontPage(),
              Download(),
              Profile(),
            ],
            onPageChanged: (page) {
              setState(() {
                _currentIndex = page;
              });
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: BottomNavigationBar(
              onTap: (index) {
                tapIndex(index);
              },
              currentIndex: _currentIndex,
              selectedItemColor: Colors.white,
              unselectedItemColor: Colors.grey[400],
              backgroundColor: Color(0xFF082032),
              items: bottomNavList(),
            ),
          ),
        ],
      ),
    );
  }
}
