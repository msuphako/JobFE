import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/forgot_password_page/forgot_password_page.dart';
import 'package:hires/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:hires/presentation/settings_screen/language.dart';

import '../../main.dart';

class SettingsScreen extends StatefulWidget {
  static String id = "SettingsScreen";

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final _textFieldController = TextEditingController();
  final user = FirebaseAuth.instance.currentUser!;

  bool status = false;
  @override
  Widget build(BuildContext context) {
    Future<DocumentSnapshot> userData =
        FirebaseFirestore.instance.collection("users").doc(user.uid).get();
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "การตั้งค่า",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getFontSize(
              20,
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
                Navigator.pop(context);
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
        width: size.width,
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        10.00,
                      ),
                      bottom: getVerticalSize(
                        66.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Padding(
                        //   padding: EdgeInsets.only(
                        //     left: getHorizontalSize(
                        //       24.00,
                        //     ),
                        //     top: getVerticalSize(
                        //       38.00,
                        //     ),
                        //     right: getHorizontalSize(
                        //       24.00,
                        //     ),
                        //   ),
                        //   child: Text(
                        //     "",
                        //     overflow: TextOverflow.ellipsis,
                        //     textAlign: TextAlign.start,
                        //     style: TextStyle(
                        //       color: ColorConstant.gray500,
                        //       fontSize: getFontSize(
                        //         14,
                        //       ),
                        //       fontFamily: 'Poppins',
                        //       fontWeight: FontWeight.w600,
                        //     ),
                        //   ),
                        // ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              20.00,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: context.locale == Constants.engLocal
                                          ? getHorizontalSize(
                                              20.00,
                                            )
                                          : getHorizontalSize(0),
                                      right: context.locale == Constants.arLocal
                                          ? getHorizontalSize(
                                              20.00,
                                            )
                                          : getHorizontalSize(0),
                                    ),
                                    child: Container(
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgGgprofile,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showDialog(
                                          context: context,
                                          builder: (context) {
                                            return FutureBuilder<
                                                    DocumentSnapshot>(
                                                future: userData,
                                                builder: (context,
                                                    AsyncSnapshot snapshot) {
                                                  if (snapshot
                                                          .connectionState ==
                                                      ConnectionState.waiting) {
                                                    return Center(
                                                        child:
                                                            CircularProgressIndicator());
                                                  }
                                                  if (snapshot.hasData) {
                                                    Map userData = snapshot.data
                                                        ?.data() as Map;

                                                    _textFieldController.text =
                                                        userData["username"];
                                                    return AlertDialog(
                                                      title: Text(
                                                          'เปลี่ยนชื่อผู้ใช้งาน'),
                                                      actions: [
                                                        GestureDetector(
                                                          onTap: () {
                                                            // changenewpass();
                                                            FirebaseFirestore
                                                                .instance
                                                                .collection(
                                                                    "users")
                                                                .doc(userData[
                                                                    "id"])
                                                                .set(
                                                                    {
                                                                  "username":
                                                                      _textFieldController
                                                                          .text
                                                                },
                                                                    SetOptions(
                                                                        merge:
                                                                            true));
                                                            setState(() {});
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                          child: Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left:
                                                                    getHorizontalSize(
                                                                  18.00,
                                                                ),
                                                                bottom:
                                                                    getVerticalSize(
                                                                  10.00,
                                                                ),
                                                                right:
                                                                    getHorizontalSize(
                                                                  18.00,
                                                                ),
                                                              ),
                                                              child: Container(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                height:
                                                                    getVerticalSize(
                                                                  56.00,
                                                                ),
                                                                width:
                                                                    getHorizontalSize(
                                                                  327.00,
                                                                ),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: ColorConstant
                                                                      .teal600,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                    getHorizontalSize(
                                                                      16.00,
                                                                    ),
                                                                  ),
                                                                ),
                                                                child: Text(
                                                                  "เปลี่ยน",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style:
                                                                      TextStyle(
                                                                    color: ColorConstant
                                                                        .whiteA700,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      16,
                                                                    ),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                      content: TextField(
                                                        controller:
                                                            _textFieldController,
                                                        decoration: InputDecoration(
                                                            hintText:
                                                                "Text Field in Dialog"),
                                                      ),
                                                    );
                                                  } else {
                                                    return Center(
                                                        child:
                                                            CircularProgressIndicator());
                                                  }
                                                });
                                          });
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            context.locale == Constants.engLocal
                                                ? getHorizontalSize(
                                                    16.00,
                                                  )
                                                : getHorizontalSize(0),
                                        right:
                                            context.locale == Constants.arLocal
                                                ? getHorizontalSize(
                                                    16.00,
                                                  )
                                                : getHorizontalSize(0),
                                        top: getVerticalSize(
                                          1.00,
                                        ),
                                      ),
                                      child: Text(
                                        "แก้ไขชื่อโปรไฟล",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: getFontSize(
                                            18,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    28.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            context.locale == Constants.engLocal
                                                ? getHorizontalSize(
                                                    20.00,
                                                  )
                                                : getHorizontalSize(0),
                                        right:
                                            context.locale == Constants.arLocal
                                                ? getHorizontalSize(
                                                    20.00,
                                                  )
                                                : getHorizontalSize(0),
                                      ),
                                      child: Container(
                                          height: getVerticalSize(
                                            23.00,
                                          ),
                                          width: getHorizontalSize(
                                            22.00,
                                          ),
                                          child: Icon(
                                            Icons.key,
                                            color: ColorConstant.gray500,
                                          )),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, ResetPasswordScreen.id);
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: context.locale ==
                                                  Constants.engLocal
                                              ? getHorizontalSize(
                                                  20.00,
                                                )
                                              : getHorizontalSize(0),
                                          right: context.locale ==
                                                  Constants.arLocal
                                              ? getHorizontalSize(
                                                  20.00,
                                                )
                                              : getHorizontalSize(0),
                                        ),
                                        child: Text(
                                          "เปลี่ยนรหัสผ่าน",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, ResetPasswordScreen.id);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      27.00,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: context.locale ==
                                                  Constants.engLocal
                                              ? getHorizontalSize(
                                                  20.00,
                                                )
                                              : getHorizontalSize(0),
                                          right: context.locale ==
                                                  Constants.arLocal
                                              ? getHorizontalSize(
                                                  20.00,
                                                )
                                              : getHorizontalSize(0),
                                        ),
                                        child: Container(
                                          height: getSize(
                                            24.00,
                                          ),
                                          width: getSize(
                                            24.00,
                                          ),
                                          child: SvgPicture.asset(
                                            ImageConstant.imgMdiformtextbo,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: context.locale ==
                                                  Constants.engLocal
                                              ? getHorizontalSize(
                                                  16.00,
                                                )
                                              : getHorizontalSize(0),
                                          right: context.locale ==
                                                  Constants.arLocal
                                              ? getHorizontalSize(
                                                  16.00,
                                                )
                                              : getHorizontalSize(0),
                                          top: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                        child: Text(
                                          "ตั้งค่าการแจ้งเตือน",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, SelectLanguage.id);
                                },
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      28.00,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: context.locale ==
                                                  Constants.engLocal
                                              ? getHorizontalSize(
                                                  20.00,
                                                )
                                              : getHorizontalSize(0),
                                          right: context.locale ==
                                                  Constants.arLocal
                                              ? getHorizontalSize(
                                                  20.00,
                                                )
                                              : getHorizontalSize(0),
                                          bottom: getVerticalSize(
                                            1.00,
                                          ),
                                        ),
                                        child: Container(
                                          height: getSize(
                                            22.00,
                                          ),
                                          width: getSize(
                                            22.00,
                                          ),
                                          child: SvgPicture.asset(
                                            ImageConstant.imgFluentlocalla,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: context.locale ==
                                                  Constants.engLocal
                                              ? getHorizontalSize(
                                                  17.00,
                                                )
                                              : getHorizontalSize(0),
                                          right: context.locale ==
                                                  Constants.arLocal
                                              ? getHorizontalSize(
                                                  17.00,
                                                )
                                              : getHorizontalSize(0),
                                        ),
                                        child: Text(
                                          "เปลี่ยนภาษา",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    24.00,
                                  ),
                                  left: getHorizontalSize(
                                    20.00,
                                  ),
                                  right: getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: getSize(
                                            23.00,
                                          ),
                                          width: getSize(
                                            23.00,
                                          ),
                                          child: SvgPicture.asset(
                                            ImageConstant.imgFluentdarkthe,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              12.00,
                                            ),
                                            right: getHorizontalSize(
                                              12.00,
                                            ),
                                          ),
                                          child: Text(
                                            "โหมดกลางคืน",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                18,
                                              ),
                                              fontFamily: 'Sofia Pro',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    FlutterSwitch(
                                      width: 50.0,
                                      height: 20.0,
                                      activeColor: ColorConstant.teal600,
                                      inactiveColor: ColorConstant.gray300,
                                      valueFontSize: 25.0,
                                      toggleSize: 20.0,
                                      borderRadius: 30.0,
                                      padding: 3.0,
                                      showOnOff: false,
                                      onToggle: (val) {
                                        setState(() {
                                          status = val;
                                        });
                                        themeManager.toggleTheme(val);
                                      },
                                      value: themeManager.themeMode ==
                                          ThemeMode.dark,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    27.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left:
                                            context.locale == Constants.engLocal
                                                ? getHorizontalSize(
                                                    20.00,
                                                  )
                                                : getHorizontalSize(0),
                                        right:
                                            context.locale == Constants.arLocal
                                                ? getHorizontalSize(
                                                    20.00,
                                                  )
                                                : getHorizontalSize(0),
                                      ),
                                      child: Container(
                                        height: getSize(
                                          24.00,
                                        ),
                                        width: getSize(
                                          24.00,
                                        ),
                                        child: SvgPicture.asset(
                                          ImageConstant.imgFluentdelete2,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          16.00,
                                        ),
                                        top: getVerticalSize(
                                          1.00,
                                        ),
                                        right: getHorizontalSize(
                                          16.00,
                                        ),
                                      ),
                                      child: Text(
                                        "ลบบัญชี",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.redA700,
                                          fontSize: getFontSize(
                                            18,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              40.00,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: Text(
                            "About",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              20.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: context.locale == Constants.engLocal
                                      ? getHorizontalSize(
                                          20.00,
                                        )
                                      : getHorizontalSize(0),
                                  right: context.locale == Constants.arLocal
                                      ? getHorizontalSize(
                                          20.00,
                                        )
                                      : getHorizontalSize(0),
                                ),
                                child: Container(
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgIcoutlinepriv,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
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
                                  bottom: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                                child: Text(
                                  "Privacy",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      15,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              27.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: context.locale == Constants.engLocal
                                      ? getHorizontalSize(
                                          20.00,
                                        )
                                      : getHorizontalSize(0),
                                  right: context.locale == Constants.arLocal
                                      ? getHorizontalSize(
                                          20.00,
                                        )
                                      : getHorizontalSize(0),
                                ),
                                child: Container(
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgCarbonconditio,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
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
                                  bottom: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                                child: Text(
                                  "Terms and conditions",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      15,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              27.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: context.locale == Constants.engLocal
                                      ? getHorizontalSize(
                                          20.00,
                                        )
                                      : getHorizontalSize(0),
                                  right: context.locale == Constants.arLocal
                                      ? getHorizontalSize(
                                          20.00,
                                        )
                                      : getHorizontalSize(0),
                                  top: getVerticalSize(
                                    1.00,
                                  ),
                                  bottom: getVerticalSize(
                                    1.00,
                                  ),
                                ),
                                child: Container(
                                  height: getSize(
                                    21.00,
                                  ),
                                  width: getSize(
                                    21.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgArcticonsdevic,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
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
                                child: Text(
                                  "Help Center",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      15,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              27.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: context.locale == Constants.engLocal
                                      ? getHorizontalSize(
                                          20.00,
                                        )
                                      : getHorizontalSize(0),
                                  right: context.locale == Constants.arLocal
                                      ? getHorizontalSize(
                                          20.00,
                                        )
                                      : getHorizontalSize(0),
                                ),
                                child: Container(
                                  height: getSize(
                                    26.00,
                                  ),
                                  width: getSize(
                                    26.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgFluentpersons,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
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
                                  top: getVerticalSize(
                                    1.00,
                                  ),
                                  bottom: getVerticalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "Support",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      15,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              25.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: context.locale == Constants.engLocal
                                      ? getHorizontalSize(
                                          20.00,
                                        )
                                      : getHorizontalSize(0),
                                  right: context.locale == Constants.arLocal
                                      ? getHorizontalSize(
                                          20.00,
                                        )
                                      : getHorizontalSize(0),
                                ),
                                child: Container(
                                  height: getSize(
                                    26.00,
                                  ),
                                  width: getSize(
                                    26.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgIonhelpcircle,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
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
                                  top: getVerticalSize(
                                    1.00,
                                  ),
                                  bottom: getVerticalSize(
                                    2.00,
                                  ),
                                ),
                                child: Text(
                                  "About",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: getFontSize(
                                      15,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
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
        ),
      ),
    );
  }
}
