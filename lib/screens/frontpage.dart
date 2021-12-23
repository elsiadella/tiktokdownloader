// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'downloadlink_page.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'TikTok Downloader',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
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
                    SizedBox(
                      width: 200.0,
                      height: 25.0,
                      child: Center(
                        child: AutoSizeText(
                          'Download Any',
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200.0,
                      height: 50.0,
                      child: Center(
                        child: AutoSizeText(
                          'TikTok Video',
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w900,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 200.0,
                      height: 20.0,
                      child: Center(
                        child: AutoSizeText(
                          'Without Watermark Free!',
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                          maxLines: 1,
                        ),
                      ),
                    ),
                    // Text(
                    //   'Download Any',
                    //   style: TextStyle(
                    //     fontSize: 50.0,
                    //   ),
                    // ),
                    // Text(
                    //   'TikTok Video',
                    //   style: TextStyle(
                    //     fontSize: 35.0,
                    //     fontWeight: FontWeight.w900,
                    //   ),
                    // ),
                    // Text(
                    //   'Without Watermark Free!',
                    //   style: TextStyle(
                    //     fontSize: 15.0,
                    //   ),
                    // ),
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
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            width: double.infinity,
            height: 100.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150.0,
                  height: 20.0,
                  child: AutoSizeText(
                    'Switch on to Auto Save',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    maxLines: 1,
                  ),
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Downloadlink()));
                  },
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
    );
  }
}
