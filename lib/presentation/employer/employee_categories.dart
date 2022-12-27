import 'package:hires/auth.dart';

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
        title: Text(
          "Categories",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                18.00,
              ),
              right: getHorizontalSize(
                18.00,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, HomeScreen.id);
              },
              child: Container(
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                  child: Icon(Icons.arrow_back_ios,
                      size: getSize(20),
                      color: isDark ? Colors.white : Colors.black)),
            ),
          ),
        ),
      ),
      body: Container(
          padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
          child: GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(3.0),
            children: <Widget>[
              CategorieBox(
                  "ประวัติที่บันทึก", Icons.description, ProfileStyle1Screen.id,
                  context: context),
              CategorieBox("ใบสมัครงาน", Icons.fact_check, ProfileStyle1Screen.id,
                  context: context),
              CategorieBox("ข้อมูลบริษัท", Icons.domain,
                  ResumePortfolioUploadScreen.id,
                  context: context),
              CategorieBox("นัดสำภาษณ์", Icons.interpreter_mode, ProfileStyle1Screen.id,
                  context: context),
              CategorieBox(
                  "บัญชี", Icons.account_circle, ProfileStyle1Screen.id,
                  context: context),
              CategorieBox("ตั้งค่า", Icons.settings, SettingsScreen.id,
                  context: context),
              // CategorieBox("Alphabet", Icons.alarm, "", context: context),
              // CategorieBox("Alphabet", Icons.alarm, "", context: context),
            ],
          )
          ),
        bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: OverflowBar(
            overflowAlignment: OverflowBarAlignment.center,
            alignment: MainAxisAlignment.center,
            overflowSpacing: 5.0,
            children: <Widget>[
              SignoutBox(context: context),
            ],
          ),
        ),
    ),
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
            padding: EdgeInsets.only(

            ),
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
                      color: Colors.grey,
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
