import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/messages_screen/chat_screen.dart';

// ignore: must_be_immutable
class Messagewidget extends StatefulWidget {
  String freindId;
  var messages;

  Messagewidget(this.freindId, this.messages);

  @override
  State<Messagewidget> createState() => _MessagewidgetState();
}

class _MessagewidgetState extends State<Messagewidget> {
  final user = FirebaseAuth.instance.currentUser!;

  Future<void> read() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .collection('messages')
        .doc(widget.freindId)
        .set({
      'isread': true,
    }, SetOptions(merge: true));
  }

  DocumentReference<Map<String, dynamic>> getEmail() {
    return db.collection("users").doc(widget.freindId);
  }

  @override
  Widget build(BuildContext context) {
    bool isread = widget.messages["isread"];
    return FutureBuilder(
        future: getEmail().get(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            final data = snapshot.data;
            // print(data["username"]);
            Timestamp date = widget.messages["last_date"];
            DateTime dtime = date.toDate();
            String time = DateFormat.jm().format(dtime);
            // print(date);
            return GestureDetector(
              onTap: () {
                read();

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChatScreen(
                              friendId: widget.freindId,
                            )));
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1, color: Colors.grey),
                  ),
                ),
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    8.00,
                  ),
                  bottom: getVerticalSize(
                    8.00,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          12.00,
                        ),
                        bottom: getVerticalSize(
                          12.00,
                        ),
                      ),
                      child: Container(
                        height: getSize(
                          40.00,
                        ),
                        width: getSize(
                          40.00,
                        ),
                        child: Card(
                            child: Icon(
                          Icons.person,
                          color: ColorConstant.teal600,
                        )),
                        // child: SvgPicture.asset(
                        //   ImageConstant.imgGoogle1,
                        //   fit: BoxFit.fill,
                        // ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: context.locale == Constants.engLocal
                            ? getHorizontalSize(
                                12.00,
                              )
                            : getHorizontalSize(0),
                        right: context.locale == Constants.arLocal
                            ? getHorizontalSize(
                                12.00,
                              )
                            : getHorizontalSize(0),
                        top: getVerticalSize(
                          11.00,
                        ),
                        bottom: getVerticalSize(
                          10.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: getHorizontalSize(
                              275.00,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  data["username"],
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      15,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: isread
                                        ? FontWeight.w500
                                        : FontWeight.w700,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      3.00,
                                    ),
                                    bottom: getVerticalSize(
                                      1.00,
                                    ),
                                  ),
                                  child: Text(
                                    time,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      fontSize: getFontSize(
                                        11,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              275.00,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  widget.messages["last_msg"],
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      14,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: isread
                                        ? FontWeight.w400
                                        : FontWeight.w600,
                                  ),
                                ),
                                // Padding(
                                //   padding: EdgeInsets.only(
                                //     top: getVerticalSize(
                                //       2.00,
                                //     ),
                                //     bottom: getVerticalSize(
                                //       3.00,
                                //     ),
                                //   ),
                                //   child: Container(
                                //     alignment: Alignment.center,
                                //     height: getVerticalSize(
                                //       16.00,
                                //     ),
                                //     width: getHorizontalSize(
                                //       23.00,
                                //     ),
                                //     decoration: BoxDecoration(
                                //       color: ColorConstant.blueA200,
                                //       borderRadius: BorderRadius.circular(
                                //         getHorizontalSize(
                                //           198.00,
                                //         ),
                                //       ),
                                //     ),
                                //     child: Text(
                                //       " : 55",
                                //       textAlign: TextAlign.center,
                                //       style: TextStyle(
                                //         color: ColorConstant.gray50,
                                //         fontSize: getFontSize(
                                //           10,
                                //         ),
                                //         fontFamily: 'Poppins',
                                //         fontWeight: FontWeight.w500,
                                //       ),
                                //     ),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
