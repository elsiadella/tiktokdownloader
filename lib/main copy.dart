// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'screens/download_page.dart';

void main() {
  runApp(MyApp());
}

// // ignore: must_be_immutable
// class MyApp extends StatelessWidget {
//   MyApp({Key? key}) : super(key: key);

//   final int _currentIndex = 2;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: Text('TikTok Downloader'),
//           backgroundColor: Color(0xFF082032),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           currentIndex: _currentIndex,
//           selectedItemColor: Colors.white,
//           unselectedItemColor: Colors.grey[400],
//           backgroundColor: Color(0xFF082032),
//           items: tttt(),
//         ),
//       ),
//     );
//   }

//   List<BottomNavigationBarItem> tttt() {
//     return [
//       BottomNavigationBarItem(
//         label: 'Home',
//         icon: Image.asset('assets/icon_home.svg'),
//       ),
//       BottomNavigationBarItem(
//         label: 'My Downloads',
//         icon: Image.asset('assets/icon_mydownloads.svg'),
//       ),
//       BottomNavigationBarItem(
//         label: 'Profile',
//         icon: SvgPicture.asset(
//           'assets/icon_profile.svg',
//           color: _currentIndex == 2 ? Colors.red : Colors.yellow,
//         ),
//       ),
//     ];
//   }
// }

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool status = false;

  int _currentIndex = 0;

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

  void tapIndex(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('TikTok Downloader'),
          backgroundColor: Color(0xFF082032),
          actions: <Widget>[
            IconButton(
              splashRadius: 25.0,
              icon: SvgPicture.asset('assets/icon_star.svg'),
              onPressed: () {},
            ),
            IconButton(
              splashRadius: 25.0,
              icon: SvgPicture.asset('assets/icon_share.svg'),
              onPressed: () {},
            ),
            IconButton(
              splashRadius: 25.0,
              icon: SvgPicture.asset('assets/icon_policy.svg'),
              onPressed: () {},
            ),
            SizedBox(
              width: 10.0,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/icon_tiktok.png'),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    children: [
                      Text(
                        'Download Any',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      Text(
                        'TikTok Video',
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        'Without Watermark Free!',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xFF082032),
                    width: 0.5,
                  ),
                  right: BorderSide(
                    color: Color(0xFF082032),
                    width: 0.5,
                  ),
                  bottom: BorderSide(
                    color: Color(0xFF082032),
                    width: 0.5,
                  ),
                  left: BorderSide(
                    color: Color(0xFF082032),
                    width: 0.5,
                  ),
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: EdgeInsets.all(20.0),
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              width: double.infinity,
              height: 100.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Switch on to Auto Save',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  FlutterSwitch(
                    activeColor: Color(0xFF082032),
                    value: status,
                    onToggle: (val) {
                      setState(() {
                        status = val;
                      });
                    },
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xFF082032),
                    width: 0.5,
                  ),
                  right: BorderSide(
                    color: Color(0xFF082032),
                    width: 0.5,
                  ),
                  bottom: BorderSide(
                    color: Color(0xFF082032),
                    width: 0.5,
                  ),
                  left: BorderSide(
                    color: Color(0xFF082032),
                    width: 0.5,
                  ),
                ),
                borderRadius: BorderRadius.circular(15.0),
              ),
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
              width: double.infinity,
              height: 60.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Paste link here and download',
                        border: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                    ),
                  ),
                  IconButton(
                    splashRadius: 25.0,
                    icon: SvgPicture.asset('assets/icon_download.svg'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20.0, right: 20.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF082032),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: TextButton(
                    child: Text(
                      'Open TikTok',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
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
    );
  }
}
