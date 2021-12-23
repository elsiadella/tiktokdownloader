// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Profile',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xFF082032),
      ),
      body: Column(
        children: [
          Container(
            //color: Color(0xFFE1E1E1),
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
                      hintText: '@ searching users',
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
                  icon: SvgPicture.asset('assets/icon_searching.svg'),
                  onPressed: () {},
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
            height: 80.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  // width: MediaQuery.of(context).size.width * 0.3,
                  child: Image.asset('image_minho.png'),
                  // constraints: BoxConstraints(maxWidth: 200.0, minWidth: 50.0),
                ),
                // SizedBox(
                //   width: 10.0,
                // ),
                Column(
                  children: [
                    Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 8.0),
                        child: Text('@blmoon_')),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icon_user.svg'),
                        SizedBox(
                          width: 10.0,
                        ),
                        SizedBox(
                          // width: 180.0,
                          height: 14.0,
                          child: AutoSizeText(
                            '8.8M',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                            maxLines: 1,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(
                  flex: 3,
                ),
                Container(
                  // color: Colors.blue,
                  margin: EdgeInsets.only(right: 5.0, left: 5.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF082032),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: TextButton(
                    child: Text(
                      'Follow',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
