import 'package:easy_localization/easy_localization.dart';
import 'package:hires/auth.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/applications_screen/applications_screen.dart';
import 'package:hires/presentation/homepage_3_screen/popular_jobs.dart';
import 'package:hires/presentation/homepage_3_screen/widgets/featured_jobs.dart';
import 'package:hires/presentation/job_proposal_screen/job_proposal_screen.dart';
import 'package:hires/presentation/profile_style_1_screen/profile_style_1_screen.dart';
import 'package:hires/presentation/search_option_3_screen/search_option_3_screen.dart';
import 'package:hires/presentation/searchfilterbottomsheet_page/searchfilterbottomsheet_page.dart';
import 'package:hires/presentation/settings_screen/settings_screen.dart';
import '../homepage_3_screen/widgets/group568_item_widget.dart';
import '../homepage_3_screen/widgets/job_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../search_result_2_screen/widgets/JobCard.dart';

class Homepage3Screen extends StatefulWidget {
  static String id = "Homepage3Screen";

  @override
  State<Homepage3Screen> createState() => _Homepage3ScreenState();
}

class _Homepage3ScreenState extends State<Homepage3Screen> {
  var auth = new Auth();
  Stream<QuerySnapshot> jobdata = db
      .collectionGroup('jobPost')
      .where('status', isEqualTo: 'กำลังเปิดรับสมัคร')
      .snapshots();
  final user = FirebaseAuth.instance.currentUser!;

  bool status = false;
  bool resume = false;
  var datajobs = [''];
  var url;

  CheckResume() async {
    final snapshot = await FirebaseFirestore.instance
        .collectionGroup('resume')
        .where('uid', isEqualTo: user.uid)
        .where('status', isEqualTo: true)
        .get();
    if (snapshot.size == 0) {
      print('it does not exist');
    } else {
      print('it exist');
      setState(() {
        resume = true;
      });
    }
  }

  fetchjobsdata() async {
    QuerySnapshot data = await db
        .collectionGroup("resume")
        .where('uid', isEqualTo: user.uid)
        .get();
    setState(() {
      datajobs.addAll(
        data.docs[0]['jobwanted'],
      );
      // print(data.docs[i]["Title"]);
    });
    return data.docs;
  }

  @override
  void initState() {
    // jobs.createJob('Software Engineer', 'Develop high-quality software solutions.');
    CheckResume();
    fetchjobsdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int silderIndex = 1;
    // print(datajobs);

    Future<DocumentSnapshot> userData =
        FirebaseFirestore.instance.collection("users").doc(user.uid).get();
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return FutureBuilder<DocumentSnapshot>(
        future: userData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Map userData = snapshot.data?.data() as Map;
            String username = userData['username'];
            String userimage = userData['imgurl'];
            return Scaffold(
              body: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  toolbarHeight: 100,
                  title: Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        12.00,
                      ),
                    ),
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "ยินดีต้อนรับ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray700,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  2.00,
                                ),
                              ),
                              child: Text(
                                "คุณ " + username,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    20,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                  actions: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: getVerticalSize(
                            12.00,
                          ),
                          bottom: getVerticalSize(
                            12.00,
                          ),
                          right: 20),
                      child: Container(
                        height: getSize(
                          60.00,
                        ),
                        width: getSize(
                          60.00,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 5,
                            color: ColorConstant.red300,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        child: userimage != ""
                            ? Image.network(
                                userimage,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                                height: 150,
                              )
                            : Icon(
                                Icons.person,
                                size: 40,
                                color: Colors.teal,
                              ),
                        // child: SvgPicture.asset(
                        //   ImageConstant.imgGoogle1,
                        //   fit: BoxFit.fill,
                        // ),
                      ),
                    ),
                  ],
                ),
                body: SafeArea(
                  child: Container(
                    width: size.width,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          0.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  0.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      40.00,
                                    ),
                                    width: getHorizontalSize(
                                      320.00,
                                    ),
                                    child: TextFormField(
                                      readOnly: true,
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, SearchJobScreen.id);
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'ค้นหางาน ',
                                        hintStyle: TextStyle(fontSize: 18),
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.only(
                                            left: context.locale ==
                                                    Constants.engLocal
                                                ? getHorizontalSize(
                                                    24.00,
                                                  )
                                                : getHorizontalSize(10),
                                            right: context.locale ==
                                                    Constants.arLocal
                                                ? getHorizontalSize(
                                                    24.00,
                                                  )
                                                : getHorizontalSize(10),
                                          ),
                                          child: Container(
                                            height: getSize(
                                              20.00,
                                            ),
                                            width: getSize(
                                              20.00,
                                            ),
                                            child: isDark
                                                ? Icon(
                                                    Icons.search,
                                                    color: Colors.white,
                                                  )
                                                : Icon(
                                                    Icons.search,
                                                  ),
                                          ),
                                        ),
                                        prefixIconConstraints: BoxConstraints(
                                          minWidth: getSize(
                                            20.00,
                                          ),
                                          minHeight: getSize(
                                            20.00,
                                          ),
                                        ),
                                        isDense: true,
                                        contentPadding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            17.75,
                                          ),
                                        ),
                                      ),
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          15.0,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: context.locale == Constants.engLocal
                                  ? getHorizontalSize(
                                      16.00,
                                    )
                                  : getHorizontalSize(0),
                              right: context.locale == Constants.arLocal
                                  ? getHorizontalSize(
                                      16.00,
                                    )
                                  : getHorizontalSize(0),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        11.00,
                                      ),
                                      right: getHorizontalSize(
                                        30.00,
                                      ),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        showModalBottomSheet(
                                            context: context,
                                            isScrollControlled: true,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.vertical(
                                              top: Radius.circular(20),
                                            )),
                                            builder: (context) {
                                              return SearchfilterbottomsheetPage();
                                            });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.only(top: 5),
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                                width: 1.5,
                                                color: ColorConstant.teal600),
                                          ),
                                        ),
                                        child: Text(
                                          'ค้นหาโดยละเอียด',
                                          style: TextStyle(
                                              color: ColorConstant.teal600,
                                              fontSize: 18),
                                        ),
                                      ),
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
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: context.locale ==
                                                    Constants.engLocal
                                                ? getHorizontalSize(
                                                    24.00,
                                                  )
                                                : getHorizontalSize(0),
                                            right: context.locale ==
                                                    Constants.arLocal
                                                ? getHorizontalSize(
                                                    24.00,
                                                  )
                                                : getHorizontalSize(0),
                                          ),
                                          child: Text(
                                            "งานที่แนะนำ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                18,
                                              ),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: context.locale ==
                                                    Constants.engLocal
                                                ? getHorizontalSize(
                                                    24.00,
                                                  )
                                                : getHorizontalSize(0),
                                            left: context.locale ==
                                                    Constants.arLocal
                                                ? getHorizontalSize(
                                                    24.00,
                                                  )
                                                : getHorizontalSize(0),
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              // auth.SendEmail();
                                            },
                                            child: Text(
                                              "",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                color: ColorConstant.gray500,
                                                fontSize: getFontSize(
                                                  13,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        0.00,
                                      ),
                                      top: getVerticalSize(
                                        12.00,
                                      ),
                                      right: getHorizontalSize(
                                        0.00,
                                      ),
                                    ),
                                    child: FutureBuilder<dynamic>(
                                        future: resume == true
                                            ? GetRasumeData(datajobs, user.uid)
                                            : GetData(user.uid),
                                        builder:
                                            (context, AsyncSnapshot snapshot) {
                                          if (snapshot.hasError) {
                                            print(snapshot.error);
                                            return Text(
                                                'Something went wrong ${snapshot.error}');
                                          }

                                          if (snapshot.connectionState ==
                                              ConnectionState.waiting) {
                                            return Center(
                                                child:
                                                    CircularProgressIndicator());
                                          }

                                          var featjobdata = snapshot.data!.docs;
                                          int feattotal =
                                              snapshot.data!.docs.length;
                                          return CarouselSlider.builder(
                                            options: CarouselOptions(
                                              height: getVerticalSize(
                                                200.00,
                                              ),
                                              initialPage: 0,
                                              autoPlay: true,
                                              viewportFraction: 1.0,
                                              enableInfiniteScroll: false,
                                              scrollDirection: Axis.horizontal,
                                              onPageChanged: (index, reason) {},
                                            ),
                                            itemCount: feattotal,
                                            itemBuilder:
                                                (context, index, realIndex) {
                                              final featdata =
                                                  featjobdata[index].data()!
                                                      as Map<String, dynamic>;
                                              return FeaturedJobsWidget(
                                                  featdata);
                                            },
                                          );
                                        }),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        20.00,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: context.locale ==
                                                    Constants.engLocal
                                                ? getHorizontalSize(
                                                    26.00,
                                                  )
                                                : getHorizontalSize(0),
                                            right: context.locale ==
                                                    Constants.arLocal
                                                ? getHorizontalSize(
                                                    26.00,
                                                  )
                                                : getHorizontalSize(0),
                                          ),
                                          child: Text(
                                            "งานล่าสุด",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                18,
                                              ),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: context.locale ==
                                                    Constants.engLocal
                                                ? getHorizontalSize(
                                                    0.00,
                                                  )
                                                : getHorizontalSize(24),
                                            right: context.locale ==
                                                    Constants.arLocal
                                                ? getHorizontalSize(
                                                    0.00,
                                                  )
                                                : getHorizontalSize(24),
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.pushNamed(
                                                  context, PopularJobes.id);
                                            },
                                            child: Text(
                                              "ดูทั้งหมด",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                color: ColorConstant.gray500,
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  FutureBuilder<Object>(
                                      future: db
                                          .collectionGroup('jobPost')
                                          .limit(4)
                                          .where('status',
                                              isEqualTo: 'กำลังเปิดรับสมัคร')
                                          .orderBy("created_at",
                                              descending: true)
                                          .get(),
                                      builder:
                                          (context, AsyncSnapshot snapshot) {
                                        if (snapshot.hasError) {
                                          print(snapshot.error);
                                          return Text('Something went wrong');
                                        }

                                        if (snapshot.connectionState ==
                                            ConnectionState.waiting) {
                                          return Center(
                                              child:
                                                  CircularProgressIndicator());
                                        }

                                        var jobdata = snapshot.data!.docs;
                                        int total = snapshot.data!.docs.length;
                                        return Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.only(),
                                            child: ListView.builder(
                                              physics: BouncingScrollPhysics(),
                                              shrinkWrap: true,
                                              itemCount: total,
                                              itemBuilder: (context, index) {
                                                final job =
                                                    jobdata[index].data()!
                                                        as Map<String, dynamic>;
                                                return FutureBuilder<
                                                        DocumentSnapshot>(
                                                    future: db
                                                        .collection('users')
                                                        .doc(job['eid'])
                                                        .get(),
                                                    builder: (context,
                                                        AsyncSnapshot
                                                            snapshot) {
                                                      if (snapshot.hasError) {
                                                        return Text(
                                                            'Something went wrong');
                                                      }

                                                      if (snapshot
                                                              .connectionState ==
                                                          ConnectionState
                                                              .waiting) {
                                                        return Center(
                                                            child:
                                                                CircularProgressIndicator());
                                                      }

                                                      Map<String, dynamic>
                                                          data =
                                                          snapshot.data!.data()
                                                              as Map<String,
                                                                  dynamic>;
                                                      return JobCardSearch(
                                                          job, data);
                                                    });
                                              },
                                            ),
                                          ),
                                        );
                                      }),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Text("data");
          }
        });
  }
}

GetData(uid) {
  var data = db
      .collectionGroup('jobPost')
      .limit(4)
      .where('status', isEqualTo: 'กำลังเปิดรับสมัคร')
      .orderBy("created_at", descending: true)
      .get();
  return data;
}

GetRasumeData(datajobs, uid) async {
  var data = await db
      .collectionGroup('jobPost')
      .where('Description', arrayContainsAny: datajobs)
      .where('status', isEqualTo: 'กำลังเปิดรับสมัคร')
      .limit(4)
      .get();

  if (data.size == 0) {
    return GetData(uid);
  } else {
    return data;
  }
}
