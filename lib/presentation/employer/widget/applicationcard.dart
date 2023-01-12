import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/job.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/employer/employee_view.dart';
import 'package:hires/presentation/job_details1_screen/job_details1_screen.dart';
import 'package:hires/presentation/messages_screen/chat_screen.dart';
import 'package:hires/presentation/messages_screen/message_textfield.dart';
import 'package:hires/presentation/messages_screen/messages_screen.dart';
import 'package:hires/thdate.dart' as timeago;
import 'package:timeago/timeago.dart';

class AppCard extends StatefulWidget {
  Map<String, dynamic> appliedata;
  String DocId;
  AppCard(this.appliedata, this.DocId);
  @override
  State<AppCard> createState() => _AppCardState();
}

class _AppCardState extends State<AppCard> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  void initState() {
    super.initState();
    // print(widget.appliedata["uid"]);
  }

  @override
  Widget build(BuildContext context) {
    Query resumedata = FirebaseFirestore.instance
        .collectionGroup('resume')
        .where("uid", isEqualTo: widget.appliedata["uid"]);
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return FutureBuilder<QuerySnapshot>(
        future: resumedata.get(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text("data ${snapshot.hasError}");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            var _data = snapshot.data?.docs[0];
            // print(widget.DocId);
            String title = "";
            String showtime = "";
            Timestamp date = widget.appliedata["date"];
            DateTime dtime = date.toDate();
            setLocaleMessages('th', ThMessages());
            showtime = format(dtime, locale: 'th');
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Emp_view_resume(_data["uid"])));
              },
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: getVerticalSize(
                    1.00,
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Stack(alignment: Alignment.center, children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: lightCostumContainer(
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              12.00,
                                            ),
                                            top: getVerticalSize(
                                              10.00,
                                            ),
                                            right: getHorizontalSize(
                                              12.00,
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              getSize(
                                                52.00,
                                              ),
                                            ),
                                            child: Container(
                                              height: getSize(
                                                75.00,
                                              ),
                                              width: getSize(
                                                75.00,
                                              ),
                                              color: ColorConstant.gray300,
                                              child: _data["imgurl"] != ""
                                                  ? Image.network(
                                                      _data["imgurl"],
                                                      fit: BoxFit.cover,
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 300,
                                                    )
                                                  : Icon(
                                                      Icons.person,
                                                      size: 40,
                                                      color: Colors.teal,
                                                    ),
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  10.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  5.00,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(),
                                                        child: Text(
                                                          "สมัครงาน ",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            color: isDark
                                                                ? Colors.white
                                                                : ColorConstant
                                                                    .gray800,
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w800,
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        widget.appliedata[
                                                            "title"],
                                                        maxLines: 5,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          fontSize: getFontSize(
                                                            18,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w800,
                                                          color: ColorConstant
                                                              .gray800,
                                                        ),
                                                      ),
                                                      // Padding(
                                                      //   padding:
                                                      //       EdgeInsets.only(left: 8.0),
                                                      //   child: Text(
                                                      //     showtime,
                                                      //     overflow: TextOverflow.ellipsis,
                                                      //     textAlign: TextAlign.left,
                                                      //     style: TextStyle(
                                                      //       fontSize: getFontSize(
                                                      //         14,
                                                      //       ),
                                                      //       fontFamily: 'Poppins',
                                                      //       fontWeight: FontWeight.w500,
                                                      //     ),
                                                      //   ),
                                                      // ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(),
                                                    child: Text(
                                                      "เพศ : ",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: isDark
                                                            ? Colors.white
                                                            : ColorConstant
                                                                .gray800,
                                                        fontSize: getFontSize(
                                                          17,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                        24.00,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      _data["gender"],
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: TextStyle(
                                                        color: isDark
                                                            ? Colors.white
                                                            : ColorConstant
                                                                .gray800,
                                                        fontSize: getFontSize(
                                                          17,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(),
                                                    child: Text(
                                                      "อายุ : ",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: isDark
                                                            ? Colors.white
                                                            : ColorConstant
                                                                .gray800,
                                                        fontSize: getFontSize(
                                                          17,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                        24.00,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      _data["age"] + " ปี",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: TextStyle(
                                                        color: isDark
                                                            ? Colors.white
                                                            : ColorConstant
                                                                .gray800,
                                                        fontSize: getFontSize(
                                                          17,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(),
                                                    child: Text(
                                                      "งานที่เคยทำ : ",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: isDark
                                                            ? Colors.white
                                                            : ColorConstant
                                                                .gray800,
                                                        fontSize: getFontSize(
                                                          17,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                        14.00,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      _data["position"],
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: TextStyle(
                                                        color: isDark
                                                            ? Colors.white
                                                            : ColorConstant
                                                                .gray800,
                                                        fontSize: getFontSize(
                                                          17,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(),
                                                    child: Text(
                                                      "ระยะเวลา : ",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: isDark
                                                            ? Colors.white
                                                            : ColorConstant
                                                                .gray800,
                                                        fontSize: getFontSize(
                                                          17,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                        24.00,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      _data["duration"],
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: TextStyle(
                                                        color: isDark
                                                            ? Colors.white
                                                            : ColorConstant
                                                                .gray800,
                                                        fontSize: getFontSize(
                                                          17,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(),
                                                    child: Text(
                                                      "จังหวัด : ",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: isDark
                                                            ? Colors.white
                                                            : ColorConstant
                                                                .gray800,
                                                        fontSize: getFontSize(
                                                          17,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                        24.00,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      _data["province_work"],
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: TextStyle(
                                                        color: isDark
                                                            ? Colors.white
                                                            : ColorConstant
                                                                .gray800,
                                                        fontSize: getFontSize(
                                                          17,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 10,
                                          right: 5,
                                          top: 10,
                                          bottom: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(left: 5.0),
                                            child: Text(
                                              showtime,
                                              maxLines: 2,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  15,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    foregroundColor:
                                                        Colors.white,
                                                    backgroundColor:
                                                        ColorConstant.yellow,
                                                  ),
                                                  onPressed: () async {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder: (context) => ChatScreen(
                                                                friendId: widget
                                                                        .appliedata[
                                                                    "uid"],
                                                                name: _data[
                                                                    'fullname'])));
                                                  },
                                                  child: Icon(Icons.chat),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(5.0),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    foregroundColor:
                                                        Colors.white,
                                                    backgroundColor:
                                                        ColorConstant.teal600,
                                                  ),
                                                  onPressed: () async {
                                                    await db
                                                        .collection('users')
                                                        .doc(user.uid)
                                                        .collection('jobPost')
                                                        .doc(widget.appliedata[
                                                            "JobId"])
                                                        .collection("applied")
                                                        .doc(widget.DocId)
                                                        .set({
                                                      "status":
                                                          "รอวันนัดสำภาษณ์"
                                                    }, SetOptions(merge: true));
                                                  },
                                                  child: Text(
                                                    "ตกลง",
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1.0, right: 10),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    foregroundColor:
                                                        Colors.white,
                                                    backgroundColor:
                                                        ColorConstant.red700,
                                                  ),
                                                  onPressed: () async {
                                                    await db
                                                        .collection('users')
                                                        .doc(user.uid)
                                                        .collection('jobPost')
                                                        .doc(widget.appliedata[
                                                            "JobId"])
                                                        .collection("applied")
                                                        .doc(widget.DocId)
                                                        .set({
                                                      "status": "ถูกยกเลิก"
                                                    }, SetOptions(merge: true));
                                                  },
                                                  child: Text(
                                                    "ยกเลิก",
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
