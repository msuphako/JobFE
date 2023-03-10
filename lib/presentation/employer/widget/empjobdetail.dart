import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/job.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/apply_screen/apply_screen.dart';

void ShowSaveAlert(BuildContext context, bool issaved) {
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
                  padding: EdgeInsets.only(top: getVerticalSize(5)),
                  child: Icon(issaved ? Icons.highlight_off : Icons.task_alt,
                      color: issaved
                          ? ColorConstant.red300
                          : ColorConstant.teal600,
                      size: 40.0),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getVerticalSize(5), bottom: getVerticalSize(10)),
                  child: Text(
                    issaved ? "Already Saved" : "Saved",
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

void ShowApplyAlert(BuildContext context, bool isApply) {
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
                  padding: EdgeInsets.only(top: getVerticalSize(5)),
                  child: Icon(isApply ? Icons.highlight_off : Icons.task_alt,
                      color: isApply
                          ? ColorConstant.red300
                          : ColorConstant.teal600,
                      size: 40.0),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: getVerticalSize(5), bottom: getVerticalSize(10)),
                  child: Text(
                    isApply ? "?????????????????????????????????" : "??????????????????????????????????????????",
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

class EmpJobDetail extends StatefulWidget {
  static String id = "EmpJobDetail";
  String JobId;
  EmpJobDetail(this.JobId);
  @override
  State<EmpJobDetail> createState() => _EmpJobDetailState();
}

class _EmpJobDetailState extends State<EmpJobDetail>
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
            return Scaffold(
              body: SafeArea(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                // bool issaved =
                                                //     await job.Savejob(user.uid,
                                                //         data["JobId"]);
                                                // ShowSaveAlert(context, issaved);
                                              },
                                              child: Container(
                                                  height: getSize(
                                                    23.00,
                                                  ),
                                                  width: getSize(
                                                    23.00,
                                                  ),
                                                  child: Icon(
                                                    Icons.delete,
                                                    size: 40,
                                                    color: Colors.white,
                                                  )),
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
                                                color: ColorConstant.whiteA700,
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
                                              data["Location"],
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.whiteA700,
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
                                    unselectedLabelColor: ColorConstant.gray800,
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
                                      Tab(text: '??????????????????????????????'),
                                      Tab(text: '???????????????????????????'),
                                      Tab(text: '???????????????????????????'),
                                      Tab(text: '??????????????????'),
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
                                        "_datajobs.Description!",
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
                                                  text: '????????? : ',
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontWeight: FontWeight.w900,
                                                  )),
                                              TextSpan(
                                                  text: data["Requirements"]
                                                      ["Gender"],
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                  )),
                                              TextSpan(
                                                  text: '\n???????????? : ',
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontWeight: FontWeight.w900,
                                                  )),
                                              TextSpan(
                                                  text: data["Requirements"]
                                                      ["Age"],
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                  )),
                                              TextSpan(
                                                  text: '\n?????????????????????????????? : ',
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.black900,
                                                    fontWeight: FontWeight.w900,
                                                  )),
                                              TextSpan(
                                                  text: data["Requirements"]
                                                      ["Exp"],
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
              )),
            );
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}
