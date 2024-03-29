import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/job.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/employer/widget/empjobdetail.dart';
import 'package:hires/presentation/job_details1_screen/job_detail_emp.dart';
import 'package:hires/presentation/job_details1_screen/job_details1_screen.dart';
import 'package:hires/thdate.dart';
import 'package:timeago/timeago.dart' as timeago;

class Job_Card extends StatefulWidget {
  Map<String, dynamic> jobpost;
  Job_Card(this.jobpost);
  @override
  State<Job_Card> createState() => Job_CardState();
}

class Job_CardState extends State<Job_Card> {
  final user = FirebaseAuth.instance.currentUser!;
  var job = Job();
  fetchjobsdata() {
    Future<DocumentSnapshot> userData =
        FirebaseFirestore.instance.collection("users").doc(user.uid).get();
    return userData;
  }

  test() {
    return test;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Query jobpost = FirebaseFirestore.instance
        .collectionGroup('jobPost')
        .where("JobId", isEqualTo: widget.jobpost["JobId"]);
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return FutureBuilder<QuerySnapshot>(
        future: jobpost.get(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text("data ${snapshot.hasError}");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            var data = snapshot.data?.docs[0];
            DateTime start = data!["start_date"].toDate();
            DateTime end = data!["due_date"].toDate();
            String start_end =
                "วันที่ ${start.day}/${start.month}/${start.year + 543} ถึง ${end.day}/${end.month}/${end.year + 543}";
            DateTime dtime = data!["created_at"].toDate();
            timeago.setLocaleMessages('th', ThMessages());
            String showtime = timeago.format(dtime, locale: 'th');
            // print(data!["JobId"]);
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        JobDetailsEmpScreen(widget.jobpost["JobId"])));
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
                                              24.00,
                                            ),
                                            right: getHorizontalSize(
                                              24.00,
                                            ),
                                            top: getVerticalSize(
                                              10.00,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    0.00,
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
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(),
                                                          child: Text(
                                                            data["Title"],
                                                            overflow:
                                                                TextOverflow
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
                                                                  FontWeight
                                                                      .w800,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "",
                                                          maxLines: 5,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: TextStyle(
                                                            fontSize:
                                                                getFontSize(
                                                              18,
                                                            ),
                                                            fontFamily:
                                                                'Poppins',
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
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.only(),
                                                      child: Text(
                                                        "สถานะ : ",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
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
                                                        right:
                                                            getHorizontalSize(
                                                          24.00,
                                                        ),
                                                      ),
                                                      child: Text(
                                                        data["status"],
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.right,
                                                        style: TextStyle(
                                                          color: data["status"] ==
                                                                  "กำลังเปิดรับสมัคร"
                                                              ? Colors.green
                                                              : ColorConstant
                                                                  .red700,
                                                          fontSize: getFontSize(
                                                            17,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.only(),
                                                      child: Text(
                                                        "รับแล้ว : ",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
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
                                                        right:
                                                            getHorizontalSize(
                                                          14.00,
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "${data["total"]} คน",
                                                        overflow: TextOverflow
                                                            .ellipsis,
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
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.only(),
                                                      child: Text(
                                                        "ระยะเวลา: ",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
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
                                                        right:
                                                            getHorizontalSize(
                                                          24.00,
                                                        ),
                                                      ),
                                                      child: Text(
                                                        start_end,
                                                        overflow: TextOverflow
                                                            .ellipsis,
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
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 30, top: 10, bottom: 10),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 180,
                                            child: Text(
                                              "โพสเมื่อ " + showtime,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            data['status'] ==
                                                    "กำลังเปิดรับสมัคร"
                                                ? 'เปิด'
                                                : 'ปิด',
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                          Switch(
                                            value: data['status'] ==
                                                    "กำลังเปิดรับสมัคร"
                                                ? true
                                                : false,
                                            onChanged: (value) async {
                                              String txt;
                                              value
                                                  ? txt = "กำลังเปิดรับสมัคร"
                                                  : txt = "ปิดรับสมัครชั่วคราว";
                                              await db
                                                  .collection('users')
                                                  .doc(user.uid)
                                                  .collection("jobPost")
                                                  .doc(data['JobId'])
                                                  .set({'status': txt},
                                                      SetOptions(merge: true));
                                            },
                                            inactiveThumbColor: Colors.red,
                                            inactiveTrackColor:
                                                Colors.grey.shade400,
                                            activeTrackColor:
                                                Colors.lightGreenAccent,
                                            activeColor: Colors.green,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 1.0, right: 10),
                                            child: TextButton(
                                                style: TextButton.styleFrom(
                                                  foregroundColor: Colors.white,
                                                  backgroundColor:
                                                      ColorConstant.red700,
                                                ),
                                                onPressed: () async {
                                                  await db
                                                      .collection('users')
                                                      .doc(user.uid)
                                                      .collection("jobPost")
                                                      .doc(data['JobId'])
                                                      .set({
                                                    'status': 'ประกาศถูกลบ'
                                                  }, SetOptions(merge: true));
                                                },
                                                child: Icon(Icons.delete)),
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
