import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/job.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/employer/widget/empjobdetail.dart';
import 'package:hires/presentation/job_details1_screen/job_details1_screen.dart';

class JobCardSearch extends StatefulWidget {
  Map<String, dynamic> data;
  JobCardSearch(this.data);
  @override
  State<JobCardSearch> createState() => JobCardSearchState();
}

class JobCardSearchState extends State<JobCardSearch> {
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
        .where("JobId", isEqualTo: widget.data["JobId"]);
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return FutureBuilder<QuerySnapshot>(
        future: jobpost.get(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("data ${snapshot.hasError}");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            var data = snapshot.data?.docs[0];
            print(data!["JobId"]);
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => JobDetails1Screen(data["JobId"])));
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
                    height: getVerticalSize(140),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, bottom: 10),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: lightCostumContainer(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            24.00,
                                          ),
                                          top: getVerticalSize(
                                            10.00,
                                          ),
                                          right: getHorizontalSize(
                                            24.00,
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
                                                16.00,
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
                                                Padding(
                                                  padding: EdgeInsets.only(),
                                                  child: Text(
                                                    "",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: getFontSize(
                                                        16,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: 200,
                                                      child: Text(
                                                        data["Title"],
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: TextStyle(
                                                          fontSize: getFontSize(
                                                            16,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      data["Title"],
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        fontSize: getFontSize(
                                                          15,
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
                                                        15,
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
                                                    data["Title"],
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                      color: isDark
                                                          ? Colors.white
                                                          : ColorConstant
                                                              .gray800,
                                                      fontSize: getFontSize(
                                                        15,
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
                                                        15,
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
                                                    data["Title"],
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                      color: isDark
                                                          ? Colors.white
                                                          : ColorConstant
                                                              .gray800,
                                                      fontSize: getFontSize(
                                                        15,
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
                                                        15,
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
                                                    data["Title"],
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                      color: isDark
                                                          ? Colors.white
                                                          : ColorConstant
                                                              .gray800,
                                                      fontSize: getFontSize(
                                                        15,
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
                                                    "ตำแหน่ง : ",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      color: isDark
                                                          ? Colors.white
                                                          : ColorConstant
                                                              .gray800,
                                                      fontSize: getFontSize(
                                                        15,
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
                                                    data["Title"],
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.right,
                                                    style: TextStyle(
                                                      color: isDark
                                                          ? Colors.white
                                                          : ColorConstant
                                                              .gray800,
                                                      fontSize: getFontSize(
                                                        15,
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
                                            padding: EdgeInsets.only(
                                                top: 10, bottom: 10),
                                            child: Row(
                                              children: [
                                                Container(
                                                  width: size.width / 2,
                                                ),
                                                // TextButton(
                                                //   style: TextButton.styleFrom(),
                                                //   onPressed: () {
                                                //     // Navigator.pushNamed(
                                                //     //     context, Profile.id);
                                                //   },
                                                //   child: Text(
                                                //     "รายละเอียด",
                                                //     style: TextStyle(fontSize: 16),
                                                //   ),
                                                // ),
                                                // TextButton(
                                                //   style: TextButton.styleFrom(
                                                //     foregroundColor: Colors.white,
                                                //     backgroundColor:
                                                //         ColorConstant.teal600,
                                                //   ),
                                                //   onPressed: () {},
                                                //   child: Text(
                                                //     "บันทึก",
                                                //     style: TextStyle(fontSize: 16),
                                                //   ),
                                                // ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
