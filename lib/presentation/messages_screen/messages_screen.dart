import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hires/notification.dart';
import 'package:hires/presentation/messages_screen/chat_screen.dart';
import 'package:hires/presentation/messages_screen/search_screen.dart';

import 'widgets/Messagewidget.dart';
import '../messages_screen/widgets/group744_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import '../search_option_3_screen/search_option_3_screen.dart';

class MessagesScreen extends StatefulWidget {
  static String id = "MessagesScreen";

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  var noti = NotificationController();
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    TextEditingController search = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        10.00,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color:
                          isDark ? ColorConstant.darkBg : ColorConstant.gray50,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: size.width,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            6.00,
                          ),
                          bottom: getVerticalSize(
                            6.00,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            right: getHorizontalSize(
                              23.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: getVerticalSize(
                                    3.00,
                                  ),
                                ),
                                child: Text(
                                  "Chats",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      fontSize: getFontSize(
                                        20,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      color: ColorConstant.teal600),
                                ),
                              ),
                              // Row(
                              //   crossAxisAlignment: CrossAxisAlignment.center,
                              //   mainAxisSize: MainAxisSize.min,
                              //   children: [
                              //     GestureDetector(
                              //       onTap: () {
                              //         Navigator.pushNamed(
                              //             context, SearchOption3Screen.id);
                              //       },
                              //       child: Container(
                              //         height: getSize(
                              //           24.00,
                              //         ),
                              //         width: getSize(
                              //           24.00,
                              //         ),
                              //         child: SvgPicture.asset(
                              //           ImageConstant.imgSearch114,
                              //           fit: BoxFit.fill,
                              //         ),
                              //       ),
                              //     ),
                              //     Padding(
                              //       padding: EdgeInsets.only(
                              //         left: context.locale == Constants.engLocal
                              //             ? getHorizontalSize(
                              //                 20.00,
                              //               )
                              //             : getHorizontalSize(0),
                              //         right: context.locale == Constants.arLocal
                              //             ? getHorizontalSize(
                              //                 20.00,
                              //               )
                              //             : getHorizontalSize(0),
                              //       ),
                              //       child: Container(
                              //         height: getSize(
                              //           24.00,
                              //         ),
                              //         width: getSize(
                              //           24.00,
                              //         ),
                              //         child: SvgPicture.asset(
                              //           ImageConstant.imgEditsquare,
                              //           fit: BoxFit.fill,
                              //         ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      24.00,
                    ),
                    top: getVerticalSize(
                      16.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                  ),
                  child: Container(
                    height: getVerticalSize(
                      40.00,
                    ),
                    width: getHorizontalSize(
                      327.00,
                    ),
                    child: TextFormField(
                      controller: search,
                      onFieldSubmitted: (value) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    SearchScreen(user.uid, search.text)));
                      },
                      decoration: InputDecoration(
                        hintText: 'ค้นหา',
                        hintStyle: TextStyle(
                          fontSize: getFontSize(
                            15.0,
                          ),
                        ),
                        isDense: true,
                        contentPadding: EdgeInsets.only(
                            top: getVerticalSize(
                              16.07,
                            ),
                            left: getHorizontalSize(12),
                            right: getHorizontalSize(12)),
                      ),
                      style: TextStyle(
                        fontSize: getFontSize(
                          15.0,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // const SizedBox(width: 20),
                        // FloatingActionButton(
                        //   heroTag: '1',
                        //   onPressed: () =>
                        //       NotificationController.createNewNotification(
                        //           context),
                        //   tooltip: 'Create New notification',
                        //   child: const Icon(Icons.outgoing_mail),
                        // ),
                        StreamBuilder(
                            stream: FirebaseFirestore.instance
                                .collection('users')
                                .doc(user.uid)
                                .collection('messages')
                                .snapshots(),
                            builder: (context, AsyncSnapshot snapshot) {
                              if (snapshot.hasError) {
                                return Text("data ${snapshot.hasError}");
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                              if (snapshot.hasData) {
                                if (snapshot.data.docs.length == 0)
                                  return Container(
                                    height: 400,
                                    child: Center(
                                        child: Text(
                                      "ไม่มีข้อความ",
                                      style: TextStyle(fontSize: 18),
                                    )),
                                  );
                                snapshot.data.docs.length.toString();
                                return Container(
                                  // decoration: new BoxDecoration(
                                  //   color: Colors.purple,
                                  //   gradient: new LinearGradient(
                                  //       colors: [Colors.red, Colors.cyan],
                                  //       begin: Alignment.centerRight,
                                  //       end: new Alignment(-1.0, -1.0)),
                                  // ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            24.00,
                                          ),
                                          top: getVerticalSize(
                                            8.00,
                                          ),
                                          right: getHorizontalSize(
                                            24.00,
                                          ),
                                        ),
                                        child: ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: snapshot.data?.docs.length,
                                          itemBuilder: (context, index) {
                                            var data =
                                                snapshot.data?.docs[index];
                                            String freindid =
                                                snapshot.data?.docs[index].id;

                                            return Messagewidget(
                                                freindid, data);
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              } else {
                                return Center(
                                    child: CircularProgressIndicator());
                              }
                            }),
                        // Align(
                        //   alignment: Alignment.centerLeft,
                        //   child: Padding(
                        //     padding: EdgeInsets.only(
                        //       left: getHorizontalSize(
                        //         24.00,
                        //       ),
                        //       top: getVerticalSize(
                        //         16.00,
                        //       ),
                        //       right: getHorizontalSize(
                        //         24.00,
                        //       ),
                        //     ),
                        //     child: Text(
                        //       "Individual Messages",
                        //       overflow: TextOverflow.ellipsis,
                        //       textAlign: TextAlign.start,
                        //       style: TextStyle(
                        //         fontSize: getFontSize(
                        //           14,
                        //         ),
                        //         fontFamily: 'Poppins',
                        //         fontWeight: FontWeight.w600,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // Padding(
                        //   padding: EdgeInsets.only(
                        //     left: getHorizontalSize(
                        //       24.00,
                        //     ),
                        //     top: getVerticalSize(
                        //       8.00,
                        //     ),
                        //     right: getHorizontalSize(
                        //       24.00,
                        //     ),
                        //   ),
                        //   child: ListView.builder(
                        //     physics: BouncingScrollPhysics(),
                        //     shrinkWrap: true,
                        //     itemCount: 4,
                        //     itemBuilder: (context, index) {
                        //       return Group744ItemWidget();
                        //     },
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.search),
      //   onPressed: () {
      //     Navigator.push(context,
      //         MaterialPageRoute(builder: (context) => SearchScreen(user.uid)));
      //   },
      // ),
    );
  }
}
