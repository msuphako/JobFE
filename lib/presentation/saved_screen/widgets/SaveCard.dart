import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/job.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/job_details1_screen/job_details1_screen.dart';

class SaveCard extends StatefulWidget {
  Map<String, dynamic> savejob;
  String DocId;
  SaveCard(this.savejob, this.DocId);
  @override
  State<SaveCard> createState() => _SaveCardState();
}

class _SaveCardState extends State<SaveCard> {
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
        .where("JobId", isEqualTo: widget.savejob["JobId"]);
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
                "${start.day}/${start.month}/${start.year + 543} ถึง ${end.day}/${end.month}/${end.year + 543}";
            DateTime dtime = data!["created_at"].toDate();
            String showtime =
                " ${dtime.day}/${dtime.month}/${dtime.year + 543}";
            // print(data!["JobId"]);
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        JobDetails1Screen(widget.savejob["JobId"])));
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
                                        FutureBuilder<DocumentSnapshot>(
                                            future: db
                                                .collection('users')
                                                .doc(data['eid'])
                                                .get(),
                                            builder: (context,
                                                AsyncSnapshot snapshot) {
                                              if (snapshot.hasError) {
                                                return Text(
                                                    'Something went wrong');
                                              }

                                              if (snapshot.connectionState ==
                                                  ConnectionState.waiting) {
                                                return CircularProgressIndicator();
                                              }
                                              Map<String, dynamic> userdata =
                                                  snapshot.data!.data()
                                                      as Map<String, dynamic>;
                                              // print(userdata);
                                              return Padding(
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
                                                  borderRadius:
                                                      BorderRadius.circular(
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
                                                    color:
                                                        ColorConstant.gray300,
                                                    child: userdata["imgurl"] !=
                                                            ""
                                                        ? Image.network(
                                                            userdata["imgurl"],
                                                            fit: BoxFit.cover,
                                                            width:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width,
                                                            height: 300,
                                                          )
                                                        : Icon(
                                                            Icons
                                                                .home_work_outlined,
                                                            size: 40,
                                                            color: Colors.teal,
                                                          ),
                                                  ),
                                                ),
                                              );
                                            }),
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
                                                  data["status"],
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
                                              showtime,
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
                                            decoration: BoxDecoration(
                                              color: Colors.blue.shade50,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  52.00,
                                                ),
                                              ),
                                            ),
                                            child: Text(
                                              "รายละเอียด",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.blue,
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
