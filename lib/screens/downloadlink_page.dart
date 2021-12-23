// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Downloadlink extends StatefulWidget {
  const Downloadlink({Key? key}) : super(key: key);

  @override
  _DownloadlinkState createState() => _DownloadlinkState();
}

class _DownloadlinkState extends State<Downloadlink> {
  showPopUp(BuildContext context, bool strict, bool isForm, Function? funct,
      String title, String? yesText, String cancelText, bool isVideo) async {
    TextEditingController outsideController = TextEditingController();

    return await showGeneralDialog(
      transitionDuration: Duration(milliseconds: 150),
      barrierLabel: '',
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionBuilder: (context, a1, a2, widget) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Transform.scale(
              scale: a1.value,
              child: Opacity(
                opacity: a1.value,
                child: Center(
                  child: Material(
                    type: MaterialType.transparency,
                    color: Colors.transparent,
                    child: Container(
                      // padding: EdgeInsets.all(20),
                      constraints: BoxConstraints(maxWidth: 300, minWidth: 100),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          // mainAxisAlignment: MainAxisAlignment.center,
                          // mainAxisSize: MainAxisSize.min,
                          children: [
                            // Image.asset(
                            //   'image_cat.png',
                            //   fit: BoxFit.fill,
                            // ),
                            Container(
                              width: 100.0,
                              height: 150.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/image_cat.png'),
                                ),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  isVideo ? 'Video Founded!' : 'Song Founded',
                                  style: TextStyle(
                                      color: Color(0xFF082032),
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              child: InkWell(
                                splashColor: Colors.grey,
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    isVideo
                                        ? 'Download No Watermark'
                                        : 'Play Audio',
                                    style: TextStyle(
                                        color: Color(0xFF082032),
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(10.0),
                              decoration: BoxDecoration(
                                border: Border(
                                  top: BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                  bottom: BorderSide(
                                    color: Colors.grey,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              child: InkWell(
                                splashColor: Colors.grey,
                                onTap: () {},
                                child: Center(
                                  child: Text(
                                    isVideo
                                        ? 'Download With Watermark'
                                        : 'Download Audio Mp3',
                                    style: TextStyle(
                                        color: Color(0xFF082032),
                                        fontWeight: FontWeight.normal),
                                  ),
                                ),
                              ),
                            ),

                            //     !strict
                            //         ? Padding(
                            //             padding: const EdgeInsets.only(
                            //                 left: 10, right: 10),
                            //             child: ElevatedButton(
                            //               style: ElevatedButton.styleFrom(
                            //                   primary: Colors.black87,
                            //                   onPrimary: Colors.white,
                            //                   textStyle: TextStyle(
                            //                     fontSize: 10,
                            //                     fontWeight: FontWeight.w600,
                            //                   )),
                            //               onPressed: () async {
                            //                 Navigator.of(context).pop(true);
                            //               },
                            //               child: Text(
                            //                 cancelText,
                            //                 overflow: TextOverflow.fade,
                            //                 maxLines: 1,
                            //                 style: TextStyle(
                            //                   color: Colors.white,
                            //                   fontSize: 12,
                            //                 ),
                            //               ),
                            //             ),
                            //           )
                            //         : Container(),
                            //   ],
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
      context: context,
      pageBuilder: (context, a1, a2) {
        return Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(
          child: Text(
            'Download Link',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: Color(0xFF082032),
        actions: <Widget>[
          IconButton(
            splashRadius: 25.0,
            icon: SvgPicture.asset('assets/icon_tik_tok.svg'),
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
            height: 50.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Paste tiktok link here',
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
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xFF082032),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: TextButton(
                  child: Text(
                    'Video Downlaod',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    showPopUp(
                        context,
                        false,
                        false,
                        () => print('function clicked'),
                        'title',
                        'yes',
                        'cancel',
                        true);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  color: Color(0xFF082032),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: TextButton(
                  child: Text(
                    'Mp3 Download',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    showPopUp(
                        context,
                        false,
                        false,
                        () => print('function clicked'),
                        'title',
                        'yes',
                        'cancel',
                        false);
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
