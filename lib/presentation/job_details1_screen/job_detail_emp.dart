import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/job.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/apply_screen/apply_screen.dart';

class JobDetailsEmpScreen extends StatefulWidget {
  static String id = "JobDetailsEmpScreen";
  String JobId;
  JobDetailsEmpScreen(this.JobId);
  @override
  State<JobDetailsEmpScreen> createState() => _JobDetailsEmpScreenState();
}

class _JobDetailsEmpScreenState extends State<JobDetailsEmpScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  var job = new Job();
  @override
  void initState() {
    //
    // fetchjobsdata();
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    final user = FirebaseAuth.instance.currentUser!;
    Query jobpost = FirebaseFirestore.instance
        .collectionGroup('jobPost')
        .where("JobId", isEqualTo: widget.JobId);
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
            DateTime start = data["start_date"].toDate();
            DateTime end = data["due_date"].toDate();
            String start_end =
                "${start.day}/${start.month}/${start.year + 543} - ${end.day}/${end.month}/${end.year + 543}";
            // print(data!["JobId"]);
            return Scaffold(
              body: FutureBuilder<DocumentSnapshot>(
                  future: db.collection('users').doc(data['eid']).get(),
                  builder: (context, snapshot2) {
                    if (snapshot2.hasError) {
                      return Text('Something went wrong');
                    }

                    if (snapshot2.connectionState == ConnectionState.waiting) {
                      return Center(child: CircularProgressIndicator());
                    }
                    Map<String, dynamic> userdata =
                        snapshot2.data!.data() as Map<String, dynamic>;
                    // print(userdata);
                    return SafeArea(
                        child: Container(
                      width: size.width,
                      child: Container(
                        margin: EdgeInsets.only(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: getVerticalSize(
                                281.92,
                              ),
                              width: size.width,
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      255.92,
                                    ),
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        ColorConstant.teal600,
                                        ColorConstant.teal600,
                                      ],
                                    )),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          18.00,
                                        ),
                                        top: getVerticalSize(
                                          15.92,
                                        ),
                                        right: getHorizontalSize(
                                          18.00,
                                        ),
                                        bottom: getVerticalSize(
                                          15.92,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: size.width,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    bottom: getVerticalSize(
                                                      56.00,
                                                    ),
                                                  ),
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Container(
                                                        height: getSize(
                                                          24.00,
                                                        ),
                                                        width: getSize(
                                                          24.00,
                                                        ),
                                                        child: Icon(
                                                            Icons
                                                                .arrow_back_ios,
                                                            size: getSize(20),
                                                            color:
                                                                Colors.white)),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                        30.50,
                                                      ),
                                                      left: 10),
                                                  child: Container(
                                                    height: getSize(
                                                      90.00,
                                                    ),
                                                    width: getSize(
                                                      90.00,
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getSize(
                                                          52.00,
                                                        ),
                                                      ),
                                                      child:
                                                          userdata["imgurl"] !=
                                                                  null
                                                              ? Image.network(
                                                                  userdata[
                                                                      "imgurl"],
                                                                  fit: BoxFit
                                                                      .cover,
                                                                  width: MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                                  height: 300,
                                                                )
                                                              : Icon(
                                                                  Icons.person,
                                                                  size: 50,
                                                                  color: Colors
                                                                      .white,
                                                                ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    top: getVerticalSize(
                                                      0.50,
                                                    ),
                                                    bottom: getVerticalSize(
                                                      56.50,
                                                    ),
                                                  ),
                                                  child: GestureDetector(
                                                    onTap: () async {},
                                                    child: Container(
                                                      height: getSize(
                                                        33.00,
                                                      ),
                                                      width: getSize(
                                                        33.00,
                                                      ),
                                                      child: Text(''),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  20.00,
                                                ),
                                                top: getVerticalSize(
                                                  12.00,
                                                ),
                                                right: getHorizontalSize(
                                                  20.00,
                                                ),
                                              ),
                                              child: Text(
                                                data["Title"],
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  fontSize: getFontSize(
                                                    24,
                                                  ),
                                                  fontFamily: 'Circular Std',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  89.00,
                                                ),
                                                top: getVerticalSize(
                                                  4.00,
                                                ),
                                                right: getHorizontalSize(
                                                  89.00,
                                                ),
                                              ),
                                              child: Text(
                                                userdata['companyname'],
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white70,
                                                  fontSize: getFontSize(
                                                    20,
                                                  ),
                                                  fontFamily: 'Circular Std',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                24.00,
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
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      30.00,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.attach_money,
                                                        color: Colors.white,
                                                      ),
                                                      Text(
                                                        data["salary"],
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.right,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          fontSize: getFontSize(
                                                            18,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    right: getHorizontalSize(
                                                      25.00,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      Icon(
                                                        Icons.location_on,
                                                        color: Colors.white,
                                                      ),
                                                      Text(
                                                        userdata['province'],
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          fontSize: getFontSize(
                                                            18,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      width: getHorizontalSize(
                                        327.00,
                                      ),
                                      margin: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          24.00,
                                        ),
                                        right: getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  10.00,
                                                ),
                                                right: getHorizontalSize(
                                                  20.00,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons.access_time_filled,
                                                    color:
                                                        ColorConstant.teal600,
                                                  ),
                                                  Text(
                                                    " " + data["Jobtype"],
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray800,
                                                      fontSize: getFontSize(
                                                        18,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                          Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  10.00,
                                                ),
                                                top: getVerticalSize(
                                                  10.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  10.00,
                                                ),
                                                right: getHorizontalSize(
                                                  20.00,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    Icons
                                                        .calendar_month_outlined,
                                                    color:
                                                        ColorConstant.teal600,
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                        24.00,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      start_end,
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
                                                          18,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              )),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  10.00,
                                                ),
                                                top: getVerticalSize(
                                                  6.00,
                                                ),
                                                right: getHorizontalSize(
                                                  20.00,
                                                ),
                                              ),
                                              child: Text(
                                                "รายละเอียดงานที่ทำ",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.teal600,
                                                  fontSize: getFontSize(
                                                    18,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      40.00,
                                                    ),
                                                    top: getVerticalSize(
                                                      10.00,
                                                    ),
                                                    right: getHorizontalSize(
                                                      20.00,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "Description",
                                                    maxLines: 10,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray800,
                                                      fontSize: getFontSize(
                                                        18,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  10.00,
                                                ),
                                                top: getVerticalSize(
                                                  6.00,
                                                ),
                                                right: getHorizontalSize(
                                                  20.00,
                                                ),
                                              ),
                                              child: Text(
                                                "คุณสมบัติผู้สมัคร",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.teal600,
                                                  fontSize: getFontSize(
                                                    18,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    40.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    10.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  "เพศ : " +
                                                      data["Requirements"]
                                                          ["Gender"],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    40.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    10.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  "อายุ : " +
                                                      data["Requirements"]
                                                          ["Age"] +
                                                      " ปี",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  10.00,
                                                ),
                                                top: getVerticalSize(
                                                  6.00,
                                                ),
                                                right: getHorizontalSize(
                                                  20.00,
                                                ),
                                              ),
                                              child: Text(
                                                "ข้อมูลการติดต่อ",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.teal600,
                                                  fontSize: getFontSize(
                                                    18,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    40.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    10.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
                                                      child: Icon(
                                                        Icons.phone,
                                                        color: ColorConstant
                                                            .teal600,
                                                      ),
                                                    ),
                                                    Text(
                                                      userdata['phone'],
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray800,
                                                        fontSize: getFontSize(
                                                          18,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    40.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    10.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Row(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
                                                      child: Icon(
                                                        Icons.email,
                                                        color: ColorConstant
                                                            .teal600,
                                                      ),
                                                    ),
                                                    Text(
                                                      userdata['email'],
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray800,
                                                        fontSize: getFontSize(
                                                          18,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      40.00,
                                                    ),
                                                    top: getVerticalSize(
                                                      10.00,
                                                    ),
                                                    right: getHorizontalSize(
                                                      20.00,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    "",
                                                    maxLines: 10,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray800,
                                                      fontSize: getFontSize(
                                                        18,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w400,
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
                              ),
                            ),
                          ],
                        ),
                      ),
                    ));
                  }),
            );
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}
