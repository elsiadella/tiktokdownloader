// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';

class Download extends StatefulWidget {
  const Download({Key? key}) : super(key: key);

  @override
  _DownloadState createState() => _DownloadState();
}

class _DownloadState extends State<Download> {
  bool isVideo = true;

  Future<void> colorVideo() {
    dynamic color = isVideo ? Color(0xFF082032) : Colors.white;
    return color;
  }

  void switchVideo() {
    setState(() {
      isVideo = !isVideo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            'My Downloads',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xFF082032),
      ),
      body: Stack(
        children: [
          isVideo
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Image.asset(
                              'image_ariana.png',
                              fit: BoxFit.fitWidth,
                            ),
                            constraints:
                                BoxConstraints(maxWidth: 200.0, minWidth: 50.0),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.60,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset('assets/icon_user.svg'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      SizedBox(
                                        // width: 180.0,
                                        height: 14.0,
                                        child: AutoSizeText(
                                          'Shellachr',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold),
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/icon_music.svg'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      SizedBox(
                                        // width: 180.0,
                                        height: 14.0,
                                        child: AutoSizeText(
                                          'Original Sound - Sella',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal),
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/icon_love.svg'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      SizedBox(
                                        // width: 180.0,
                                        height: 14.0,
                                        child: AutoSizeText(
                                          '92.4K',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal),
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/icon_play.svg'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      SizedBox(
                                        // width: 180.0,
                                        height: 14.0,
                                        child: AutoSizeText(
                                          '354.8K',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal),
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Image.asset(
                              'image_justin.png',
                              fit: BoxFit.fitWidth,
                            ),
                            constraints:
                                BoxConstraints(maxWidth: 200.0, minWidth: 50.0),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.60,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset('assets/icon_user.svg'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      SizedBox(
                                        // width: 180.0,
                                        height: 14.0,
                                        child: AutoSizeText(
                                          'Taniasss',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold),
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/icon_music.svg'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      SizedBox(
                                        // width: 180.0,
                                        height: 14.0,
                                        child: AutoSizeText(
                                          'Yummy - Justin Beiber',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal),
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/icon_love.svg'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      SizedBox(
                                        // width: 180.0,
                                        height: 14.0,
                                        child: AutoSizeText(
                                          '900.4K',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal),
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/icon_play.svg'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      SizedBox(
                                        // width: 180.0,
                                        height: 14.0,
                                        child: AutoSizeText(
                                          '904.8K',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal),
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Image.asset(
                              'image_camila.png',
                              fit: BoxFit.fitWidth,
                            ),
                            constraints:
                                BoxConstraints(maxWidth: 200.0, minWidth: 50.0),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.60,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/icon_music.svg'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      SizedBox(
                                        // width: 180.0,
                                        height: 14.0,
                                        child: AutoSizeText(
                                          'Senorita - Camila Cabello',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal),
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/icon_play.svg'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      SizedBox(
                                        // width: 180.0,
                                        height: 14.0,
                                        child: AutoSizeText(
                                          '354.8K',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal),
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.3,
                            child: Image.asset(
                              'image_shawn.png',
                              fit: BoxFit.fitWidth,
                            ),
                            constraints:
                                BoxConstraints(maxWidth: 200.0, minWidth: 50.0),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.60,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/icon_music.svg'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      SizedBox(
                                        // width: 180.0,
                                        height: 14.0,
                                        child: AutoSizeText(
                                          'Imaginations - Shawn Mendes',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal),
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.all(5.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SvgPicture.asset('assets/icon_play.svg'),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      SizedBox(
                                        // width: 180.0,
                                        height: 14.0,
                                        child: AutoSizeText(
                                          '954.8K',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal),
                                          maxLines: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15.0),
                // padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: isVideo ? Colors.white : Color(0xFF082032),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                width: 100.0,
                height: 40.0,
                child: InkWell(
                  borderRadius: BorderRadius.circular(15.0),
                  splashColor: Colors.grey,
                  onTap: () {
                    switchVideo();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(
                        CupertinoIcons.music_note_2,
                        color: isVideo ? Color(0xFF082032) : Colors.white,
                      ),
                      SizedBox(width: 10.0),
                      Text(
                        'Mp3',
                        style: TextStyle(
                            color: isVideo ? Color(0xFF082032) : Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 70.0),
                // padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: isVideo ? Color(0xFF082032) : Colors.white,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                width: 100.0,
                height: 40.0,
                child: InkWell(
                  borderRadius: BorderRadius.circular(15.0),
                  splashColor: Colors.grey,
                  onTap: () {
                    switchVideo();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Icon(CupertinoIcons.video_camera_solid,
                          color: isVideo ? Colors.white : Color(0xFF082032)),
                      SizedBox(width: 10.0),
                      Text(
                        'Videos',
                        style: TextStyle(
                          color: isVideo ? Colors.white : Color(0xFF082032),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
