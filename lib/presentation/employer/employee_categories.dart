import 'package:hires/auth.dart';
import 'package:hires/presentation/employer/interview.dart';
import 'package:hires/presentation/employer/jobapplication.dart';

import 'package:hires/presentation/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/profile_style_1_screen/profile_style_1_screen.dart';
import 'package:hires/presentation/resume_portfolio_upload_screen/resume_portfolio_upload_screen.dart';
import 'package:hires/presentation/settings_screen/settings_screen.dart';

class EmpCategories extends StatefulWidget {
  static String id = "EmpCategories";

  @override
  State<EmpCategories> createState() => _EmpCategoriesState();
}

class _EmpCategoriesState extends State<EmpCategories> {
  var isDark;

  var auth = new Auth();

  @override
  Widget build(BuildContext context) {
    isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    10.00,
                  ),
                ),
                decoration: BoxDecoration(
                  color: isDark ? ColorConstant.darkBg : ColorConstant.gray50,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: size.width,
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        6.00,
                      ),
                      bottom: getVerticalSize(
                        6.00,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          24.00,
                        ),
                        right: getHorizontalSize(
                          23.00,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              bottom: getVerticalSize(
                                3.00,
                              ),
                            ),
                            child: Text(
                              "Categories",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  18,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Dialog(
                                          child: Container(
                                            height: getVerticalSize(200),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                Icon(Icons.logout,
                                                    color:
                                                        ColorConstant.redA700),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: getVerticalSize(30)),
                                                  child: Text(
                                                    "Logout From your account?",
                                                    style: TextStyle(
                                                      fontFamily: "Poppins",
                                                      fontSize: getFontSize(18),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left:
                                                          getHorizontalSize(50),
                                                      right:
                                                          getHorizontalSize(50),
                                                      top: getVerticalSize(50),
                                                      bottom:
                                                          getVerticalSize(20)),
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                        },
                                                        child: Text(
                                                          "Cancel",
                                                          style: TextStyle(
                                                            fontFamily:
                                                                "Poppins",
                                                            fontSize:
                                                                getFontSize(18),
                                                          ),
                                                        ),
                                                      ),
                                                      GestureDetector(
                                                        onTap: () {
                                                          Navigator.pop(
                                                              context);
                                                          auth.signOut();
                                                        },
                                                        child: Text(
                                                          "Logout",
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  "Poppins",
                                                              fontSize:
                                                                  getFontSize(
                                                                      18),
                                                              color:
                                                                  Colors.red),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                },
                                child: Container(
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                  child: Icon(
                                    Icons.logout,
                                    color: Colors.red,
                                  ),
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
            ),
          ],
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(3.0),
            children: <Widget>[
              CategorieBox("ใบสมัครงาน", Icons.fact_check, AppScreen.id,
                  context: context),

              CategorieBox(
                  "นัดสำภาษณ์", Icons.interpreter_mode, InterviewScreen.id,
                  context: context),
              CategorieBox("ข้อมูลสถานประกอบการ", Icons.maps_home_work,
                  ProfileStyle1Screen.id,
                  context: context),
              CategorieBox("ตั้งค่า", Icons.settings, SettingsScreen.id,
                  context: context),
              // CategorieBox("Alphabet", Icons.alarm, "", context: context),
              // CategorieBox("Alphabet", Icons.alarm, "", context: context),
            ],
          )),
      // bottomNavigationBar: BottomAppBar(
      //   child: Padding(
      //     padding: const EdgeInsets.all(8),
      //     child: OverflowBar(
      //       overflowAlignment: OverflowBarAlignment.center,
      //       alignment: MainAxisAlignment.center,
      //       overflowSpacing: 5.0,
      //       children: <Widget>[
      //         SignoutBox(context: context),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }

  SignoutBox({required BuildContext context}) {
    return new InkWell(
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return Dialog(
                child: Container(
                  height: getVerticalSize(200),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.logout, color: ColorConstant.redA700),
                      Padding(
                        padding: EdgeInsets.only(top: getVerticalSize(30)),
                        child: Text(
                          "Logout From your account?",
                          style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: getFontSize(18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: getHorizontalSize(50),
                            right: getHorizontalSize(50),
                            top: getVerticalSize(50),
                            bottom: getVerticalSize(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Cancel",
                                style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: getFontSize(18),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                auth.signOut();
                              },
                              child: Text(
                                "Logout",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: getFontSize(18),
                                    color: Colors.red),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            });
      },
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(),
            child: Text(
              "ออกจากระบบ",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: getFontSize(
                  18,
                ),
                color: Colors.red,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Card CategorieBox(String title, IconData icon, String page,
      {required BuildContext context}) {
    return Card(
        elevation: 1.0,
        margin: new EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: isDark
                ? ColorConstant.gray90087
                : Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 5,
                offset: Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: new InkWell(
            onTap: () {
              Navigator.pushNamed(context, page);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      39.00,
                    ),
                    top: getVerticalSize(
                      45.00,
                    ),
                    right: getHorizontalSize(
                      39.00,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        116.00,
                      ),
                    ),
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.teal,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      16.00,
                    ),
                    bottom: getVerticalSize(
                      17.00,
                    ),
                  ),
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: getFontSize(
                        18,
                      ),
                      color: isDark ? Colors.white : Colors.black,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
