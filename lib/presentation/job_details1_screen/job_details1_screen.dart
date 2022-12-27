import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/job.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/apply_screen/apply_screen.dart';

void showAlert(BuildContext context, bool issaved) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        Future.delayed(const Duration(seconds: 2), () {
          Navigator.pop(context);
        });
        return Dialog(
          child: Container(
            height: getVerticalSize(100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:  EdgeInsets.only(top: getVerticalSize(5)),
                  child: Icon(issaved?Icons.highlight_off:Icons.task_alt, color: issaved?ColorConstant.red300:ColorConstant.teal600, size: 40.0),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getVerticalSize(5), bottom: getVerticalSize(10)),
                  child: Text(
                    issaved?"Already Saved":"Saved",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: getFontSize(20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}

class JobDetails1Screen extends StatefulWidget {
  static String id = "JobDetails1Screen";
  final String JobId;
  JobDetails1Screen({required this.JobId});
  @override
  State<JobDetails1Screen> createState() => _JobDetails1ScreenState(JobId);
}

class _JobDetails1ScreenState extends State<JobDetails1Screen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  String JobId;
  _JobDetails1ScreenState(this.JobId);
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
        child: Container(
          width: getHorizontalSize(330),
          height: getVerticalSize(50),
          child: FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(getHorizontalSize(12))),
              backgroundColor: ColorConstant.teal600,
              foregroundColor: ColorConstant.whiteA700,
              extendedTextStyle: TextStyle(
                color: ColorConstant.gray50,
                fontSize: getFontSize(
                  14,
                ),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.07,
              ),
              onPressed: () {
                Navigator.pushNamed(context, ApplyScreen.id);
              },
              label: Text('Apply Now')),
        ),
      ),
      body: SafeArea(
        child: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
            stream:
                db.collection("jobs").doc(JobId).snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                var data = snapshot.data!.data();
                var title = data!['Title'];
                var Location = data['Location'];
                var Description = data['Description'];
                var Requirements = data['Requirements'];

                return Container(
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
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getVerticalSize(
                                    281.92,
                                  ),
                                  width: size.width,
                                  child: SvgPicture.asset(
                                    ImageConstant.greenBg,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getVerticalSize(
                                    255.92,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgMaskgroup22,
                                    fit: BoxFit.fill,
                                  ),
                                ),
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
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: size.width,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                                        Icons.arrow_back_ios,
                                                        size: getSize(20),
                                                        color: Colors.white)),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  30.50,
                                                ),
                                              ),
                                              child: Container(
                                                height: getSize(
                                                  80.00,
                                                ),
                                                width: getSize(
                                                  80.00,
                                                ),
                                                child: SvgPicture.asset(
                                                  ImageConstant.imgGroup242,
                                                  fit: BoxFit.fill,
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
                                                onTap: () async {
                                                  bool issaved = await job.Savejob(user.uid,JobId);
                                                  showAlert(context,issaved);
                                                },
                                                child: Container(
                                                  height: getSize(
                                                    23.00,
                                                  ),
                                                  width: getSize(
                                                    23.00,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant
                                                        .imgFluentbookmark8,
                                                    fit: BoxFit.fill,
                                                  ),
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
                                            title,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorConstant.whiteA700,
                                              fontSize: getFontSize(
                                                20,
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
                                            "company",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorConstant.whiteA7009e,
                                              fontSize: getFontSize(
                                                18,
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
                                              MainAxisAlignment.spaceBetween,
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
                                              child: Text(
                                                "160,00/year",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  fontSize: getFontSize(
                                                    16,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                right: getHorizontalSize(
                                                  25.00,
                                                ),
                                              ),
                                              child: Text(
                                                Location,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color:
                                                      ColorConstant.whiteA700,
                                                  fontSize: getFontSize(
                                                    16,
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
                                      5.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getVerticalSize(50),
                                    child: TabBar(
                                      indicatorColor: Colors.transparent,
                                      controller: tabController,
                                      isScrollable: true,
                                      labelColor: isDark
                                          ? Colors.white
                                          : Colors.green[600],
                                      unselectedLabelColor:
                                          ColorConstant.gray800,
                                      unselectedLabelStyle: TextStyle(
                                        fontSize: getFontSize(
                                          18,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                      labelStyle: TextStyle(
                                        fontSize: getFontSize(
                                          20,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                      tabs: [
                                        Tab(text: 'รายละเอียด'),
                                        Tab(text: 'คุณสมบัติ'),
                                        Tab(text: 'สวัสดิการ'),
                                        Tab(text: 'ติดต่อ'),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(350),
                                  child: TabBarView(
                                    controller: tabController,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(
                                          327.00,
                                        ),
                                        margin: EdgeInsets.only(
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
                                        child: Text(
                                          Description,
                                          maxLines: null,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          327.00,
                                        ),
                                        margin: EdgeInsets.only(
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
                                        child: RichText(
                                          text: TextSpan(
                                              style: TextStyle(
                                                color: Colors.green[600],
                                                fontSize: getFontSize(
                                                  20,
                                                ),
                                                fontFamily: 'Poppins',
                                              ),
                                              children: <TextSpan>[
                                                TextSpan(
                                                    text: 'เพศ : ',
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                    )),
                                                TextSpan(
                                                    text:
                                                        Requirements["Gender"],
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                    )),
                                                TextSpan(
                                                    text: '\nอายุ : ',
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                    )),
                                                TextSpan(
                                                    text: Requirements["Age"],
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                    )),
                                                TextSpan(
                                                    text: '\nประสบการณ์ : ',
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .black900,
                                                      fontWeight:
                                                          FontWeight.w900,
                                                    )),
                                                TextSpan(
                                                    text: Requirements["Exp"],
                                                    style: TextStyle(
                                                        color: ColorConstant
                                                            .black900)),
                                              ]),
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          327.00,
                                        ),
                                        margin: EdgeInsets.only(
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
                                        child: Text(
                                          "Master's degree in Design, Computer Science, Computer Interaction, or a related field.\n3 years of relevant industry experience.\nAbility to lead and ideate products from scratch and improve features, all with a user-centered design process.\nSkills in communicating and influencing product design strategy.\nExcellent problem-solving skills and familiarity with technical constraints and limitations.\nExperience designing across multiple platform.\nPortfolio highlighting multiple projects.",
                                          maxLines: null,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          327.00,
                                        ),
                                        margin: EdgeInsets.only(
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
                                        child: Text(
                                          "Master's degree in Design, Computer Science, Computer Interaction, or a related field.\n3 years of relevant industry experience.\nAbility to lead and ideate products from scratch and improve features, all with a user-centered design process.\nSkills in communicating and influencing product design strategy.\nExcellent problem-solving skills and familiarity with technical constraints and limitations.\nExperience designing across multiple platform.\nPortfolio highlighting multiple projects.",
                                          maxLines: null,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w400,
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
                      ],
                    ),
                  ),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}
