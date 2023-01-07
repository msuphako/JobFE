import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/job.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/job_details1_screen/job_details1_screen.dart';

class InterviewEmpoyeeCard extends StatefulWidget {
  Map<String, dynamic> appliedata;
  InterviewEmpoyeeCard(this.appliedata);
  @override
  State<InterviewEmpoyeeCard> createState() => InterviewEmpoyeeCardState();
}

class InterviewEmpoyeeCardState extends State<InterviewEmpoyeeCard> {
  final user = FirebaseAuth.instance.currentUser!;
  var job = Job();

  @override
  Widget build(BuildContext context) {
    Query jobpost = FirebaseFirestore.instance
        .collectionGroup('jobPost')
        .where("JobId", isEqualTo: widget.appliedata["JobId"]);
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

            DateTime dtime = data!["created_at"].toDate();
            String showtime =
                'วันที่สัมภาษณ์ ' + widget.appliedata["interview_date"];
            // String showtime =
            //     " ${dtime.day}/${dtime.month}/${dtime.year + 543}";
            // print(data!["JobId"]);
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        JobDetails1Screen(widget.appliedata["JobId"])));
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
                                            top: getVerticalSize(
                                              30.00,
                                            ),
                                          ),
                                          child: Image.asset(
                                            ImageConstant.imgImage29,
                                            height: getSize(
                                              43.00,
                                            ),
                                            width: getSize(
                                              43.00,
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
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
                                                    10.00,
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
                                                padding: const EdgeInsets.only(
                                                    top: 8.0, bottom: 8),
                                                child: Text(
                                                  widget.appliedata[
                                                      "interview_date"],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color: Colors.teal,
                                                    fontSize: getFontSize(
                                                      17,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                        right:
                                                            getHorizontalSize(
                                                          15.00,
                                                        ),
                                                      ),
                                                      child: Icon(
                                                        Icons.access_time_sharp,
                                                        color: ColorConstant
                                                            .teal600,
                                                      )),
                                                  Text(
                                                    data["Jobtype"],
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                      fontSize: getFontSize(
                                                        17,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                        15.00,
                                                      ),
                                                    ),
                                                    child: Icon(
                                                      Icons
                                                          .attach_money_outlined,
                                                      color:
                                                          ColorConstant.teal600,
                                                    ),
                                                  ),
                                                  Text(
                                                    "${data["salary"]}",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.right,
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
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                        right:
                                                            getHorizontalSize(
                                                          15.00,
                                                        ),
                                                      ),
                                                      child: Icon(
                                                        Icons.location_on,
                                                        color: ColorConstant
                                                            .teal600,
                                                      )),
                                                  Text(
                                                    data["Location"],
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.right,
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
                                                ],
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                        right:
                                                            getHorizontalSize(
                                                          15.00,
                                                        ),
                                                      ),
                                                      child: Icon(
                                                        Icons.interpreter_mode,
                                                        color: ColorConstant
                                                            .teal600,
                                                      )),
                                                  Text(
                                                    showtime,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.right,
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
                                                ],
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
                                              "",
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
                                          Container(
                                            alignment: Alignment.center,
                                            height: getVerticalSize(
                                              33.00,
                                            ),
                                            width: getHorizontalSize(
                                              125.00,
                                            ),
                                            // decoration: BoxDecoration(
                                            //   color:
                                            //       widget.appliedata['status'] ==
                                            //               "เสร็จสิ้น"
                                            //           ? ColorConstant.green50
                                            //           : Colors.yellow.shade50,
                                            //   borderRadius:
                                            //       BorderRadius.circular(
                                            //     getHorizontalSize(
                                            //       52.00,
                                            //     ),
                                            //   ),
                                            // ),
                                            child: Text(
                                              widget.appliedata['status'],
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: widget.appliedata[
                                                            'status'] ==
                                                        "เสร็จสิ้น"
                                                    ? ColorConstant.teal600
                                                    : ColorConstant.yellow700,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
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
