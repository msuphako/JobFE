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
  Stream<QuerySnapshot> jobdata = db.collectionGroup('jobPost').snapshots();

  bool status = false;
  var datajobs = [];
  var url;
  img() async {
    final ref = FirebaseStorage.instance
        .ref()
        .child('istockphoto-612716462-612x612.jpg');
    url = await ref.getDownloadURL();
    print(url);
  }

  fetchjobsdata() async {
    QuerySnapshot data = await db.collectionGroup("jobPost").limit(4).get();
    setState(() {
      for (int i = 0; i < data.docs.length; i++) {
        datajobs.add([
          data.docs[i].id,
          data.docs[i]["Title"],
          data.docs[i]["Jobtype"],
          data.docs[i]["Location"],
        ]);
        // print(data.docs[i]["Title"]);
      }
    });
    return data.docs;
  }

  @override
  void initState() {
    // jobs.createJob('Software Engineer', 'Develop high-quality software solutions.');
    fetchjobsdata();
    img();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int silderIndex = 1;

    final user = FirebaseAuth.instance.currentUser!;

    Future<DocumentSnapshot> userData =
        FirebaseFirestore.instance.collection("users").doc(user.uid).get();
    bool isDark = Theme.of(context).brightness == Brightness.dark;
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
                    "Welcome Back!",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorConstant.gray500,
                      fontSize: getFontSize(
                        14,
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
                    child: FutureBuilder<DocumentSnapshot>(
                        future: userData,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            Map userData = snapshot.data?.data() as Map;
                            String username = userData['username'];
                            return Text(
                              username,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            );
                          } else {
                            return CircularProgressIndicator();
                          }
                        }),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Builder(builder: (context) {
              return GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: getVerticalSize(20),
                      horizontal: getHorizontalSize(16)),
                  child: Container(
                    height: getVerticalSize(
                      50.00,
                    ),
                    width: getHorizontalSize(
                      52.00,
                    ),
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        1.00,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: getHorizontalSize(
                                2.00,
                              ),
                            ),
                            child: Container(
                              height: getSize(
                                50.00,
                              ),
                              width: getSize(
                                50.00,
                              ),
                              decoration: BoxDecoration(
                                  color: isDark
                                      ? ColorConstant.yellow
                                      : ColorConstant.red300,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(8),
                                  )),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  12.00,
                                ),
                                right: getHorizontalSize(
                                  2.00,
                                ),
                                bottom: getVerticalSize(5)),
                            child: Image.network(
                                "https:firebasestorage.googleapis.com/v0/b/jobfe-a636f.appspot.com/o/istockphoto-612716462-612x612.jpg?alt=media&token=09dbb46b-5f8f-47e2-8c29-c43"),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: getHorizontalSize(4),
                                vertical: getVerticalSize(4)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: isDark
                                    ? ColorConstant.darkBg
                                    : ColorConstant.whiteA700),
                            child: Container(
                              height: getSize(
                                8.00,
                              ),
                              width: getSize(
                                8.00,
                              ),
                              decoration: BoxDecoration(
                                  color: ColorConstant.redA701,
                                  shape: BoxShape.circle),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
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
                              263.00,
                            ),
                            child: TextFormField(
                              readOnly: true,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, SearchOption3Screen.id);
                              },
                              decoration: InputDecoration(
                                hintText: 'ค้นหางาน ',
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: context.locale == Constants.engLocal
                                        ? getHorizontalSize(
                                            24.00,
                                          )
                                        : getHorizontalSize(10),
                                    right: context.locale == Constants.arLocal
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
                                        ? SvgPicture.asset(
                                            ImageConstant.imgSearch11,
                                            fit: BoxFit.contain,
                                            color: Colors.white,
                                          )
                                        : SvgPicture.asset(
                                            ImageConstant.imgSearch11,
                                            fit: BoxFit.contain,
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
                          Container(
                            height: getSize(
                              48.00,
                            ),
                            width: getSize(
                              48.00,
                            ),
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
                            decoration: BoxDecoration(
                              color: isDark
                                  ? ColorConstant.darkContainer
                                  : ColorConstant.gray100,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  12.00,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        11.00,
                                      ),
                                      top: getVerticalSize(
                                        11.00,
                                      ),
                                      right: getHorizontalSize(
                                        11.00,
                                      ),
                                      bottom: getVerticalSize(
                                        11.00,
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
                                        height: getSize(
                                          26.00,
                                        ),
                                        width: getSize(
                                          26.00,
                                        ),
                                        child: SvgPicture.asset(
                                          ImageConstant.imgFilter5,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
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
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                40.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: context.locale == Constants.engLocal
                                        ? getHorizontalSize(
                                            24.00,
                                          )
                                        : getHorizontalSize(0),
                                    right: context.locale == Constants.arLocal
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
                                    right: context.locale == Constants.engLocal
                                        ? getHorizontalSize(
                                            24.00,
                                          )
                                        : getHorizontalSize(0),
                                    left: context.locale == Constants.arLocal
                                        ? getHorizontalSize(
                                            24.00,
                                          )
                                        : getHorizontalSize(0),
                                  ),
                                  child: GestureDetector(
                                    onTap: () {},
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
                            child: CarouselSlider.builder(
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
                              itemCount: datajobs.length,
                              itemBuilder: (context, index, realIndex) {
                                return FeaturedJobsWidget(datajobs[index]);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                20.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: context.locale == Constants.engLocal
                                        ? getHorizontalSize(
                                            26.00,
                                          )
                                        : getHorizontalSize(0),
                                    right: context.locale == Constants.arLocal
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
                                    left: context.locale == Constants.engLocal
                                        ? getHorizontalSize(
                                            0.00,
                                          )
                                        : getHorizontalSize(24),
                                    right: context.locale == Constants.arLocal
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
                                  .orderBy("created_at", descending: true)
                                  .get(),
                              builder: (context, AsyncSnapshot snapshot) {
                                if (snapshot.hasError) {
                                  return Text('Something went wrong');
                                }

                                if (snapshot.connectionState ==
                                    ConnectionState.waiting) {
                                  return CircularProgressIndicator();
                                }

                                var jobdata = snapshot.data!.docs;
                                int total = snapshot.data!.docs.length;
                                return Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        24.00,
                                      ),
                                      top: getVerticalSize(
                                        20.00,
                                      ),
                                      right: getHorizontalSize(
                                        24.00,
                                      ),
                                    ),
                                    child: ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: total,
                                      itemBuilder: (context, index) {
                                        final job = jobdata[index].data()!
                                            as Map<String, dynamic>;
                                        return JobCardSearch(job);
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
  }
}
