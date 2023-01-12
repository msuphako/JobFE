import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/auth.dart';
import 'package:hires/core/app_export.dart';

class ResetPasswordScreen extends StatefulWidget {
  static String id = "ResetPasswordScreen";

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  var auth = Auth();
  var newpasscon = TextEditingController();
  var confirmpasscon = TextEditingController();
  final user = FirebaseAuth.instance.currentUser!;

  var form;
  changenewpass() {
    if (newpasscon.text != confirmpasscon.text) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: ColorConstant.red700,
          behavior: SnackBarBehavior.floating,
          content: Row(
            children: [
              Icon(
                Icons.warning_amber,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "รหัสผ่านต่างกัน",
                style: TextStyle(fontSize: 18),
              )
            ],
          ),
        ),
      );
      return;
    }

    // print(newpasscon.text + confirmpasscon.text);
    auth.changePassword(user.email!, newpasscon.text, context);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.gray50,
              ),
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
                          16.00,
                        ),
                        bottom: getVerticalSize(
                          20.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Form(
                            key: form,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Align(
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
                                      child: Container(
                                        height: getSize(
                                          24.00,
                                        ),
                                        width: getSize(
                                          24.00,
                                        ),
                                        child: SvgPicture.asset(
                                          ImageConstant.imgAkariconschev,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        18.00,
                                      ),
                                      top: getVerticalSize(
                                        49.00,
                                      ),
                                      right: getHorizontalSize(
                                        18.00,
                                      ),
                                    ),
                                    child: Text(
                                      "JobFE",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.teal600,
                                        fontSize: getFontSize(
                                          21.55,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        18.00,
                                      ),
                                      top: getVerticalSize(
                                        38.73,
                                      ),
                                      right: getHorizontalSize(
                                        18.00,
                                      ),
                                    ),
                                    child: Text(
                                      "เปลี่ยนรหัสผ่าน",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          24,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: getHorizontalSize(
                                      311.00,
                                    ),
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        18.00,
                                      ),
                                      top: getVerticalSize(
                                        17.00,
                                      ),
                                      right: getHorizontalSize(
                                        18.00,
                                      ),
                                    ),
                                    child: Text(
                                      "กรอกรหัสผ่านใหม่ที่ต้องการ แล้วทำการยืนยันรหัสผ่านใหม่",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray700,
                                        fontSize: getFontSize(
                                          18,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      24.00,
                                    ),
                                    top: getVerticalSize(
                                      128.27,
                                    ),
                                    right: getHorizontalSize(
                                      24.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getVerticalSize(
                                      52.00,
                                    ),
                                    width: getHorizontalSize(
                                      327.00,
                                    ),
                                    child: TextFormField(
                                      controller: newpasscon,
                                      obscureText: true,
                                      decoration: InputDecoration(
                                        hintText: 'รหัสผ่านใหม่',
                                        hintStyle: TextStyle(
                                          fontSize: getFontSize(
                                            18.0,
                                          ),
                                          color: ColorConstant.gray700,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              12.00,
                                            ),
                                          ),
                                          borderSide: BorderSide(
                                            color: ColorConstant.gray800,
                                            width: 1,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              12.00,
                                            ),
                                          ),
                                          borderSide: BorderSide(
                                            color: ColorConstant.gray700,
                                            width: 1,
                                          ),
                                        ),
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              24.00,
                                            ),
                                            right: getHorizontalSize(
                                              10.00,
                                            ),
                                          ),
                                          child: Container(
                                            height: getSize(
                                              20.00,
                                            ),
                                            width: getSize(
                                              20.00,
                                            ),
                                            child: SvgPicture.asset(
                                              ImageConstant.imgPassword61,
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
                                        suffixIcon: Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              10.00,
                                            ),
                                            right: getHorizontalSize(
                                              23.00,
                                            ),
                                          ),
                                          child: Container(
                                            height: getSize(
                                              24.00,
                                            ),
                                            width: getSize(
                                              24.00,
                                            ),
                                            child: SvgPicture.asset(
                                              ImageConstant.imgEye,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                        suffixIconConstraints: BoxConstraints(
                                          minWidth: getSize(
                                            24.00,
                                          ),
                                          minHeight: getSize(
                                            24.00,
                                          ),
                                        ),
                                        isDense: true,
                                        contentPadding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            19.50,
                                          ),
                                          bottom: getVerticalSize(
                                            19.50,
                                          ),
                                        ),
                                      ),
                                      style: TextStyle(
                                        color: ColorConstant.gray800,
                                        fontSize: getFontSize(
                                          18.0,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
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
                                  child: Container(
                                    height: getVerticalSize(
                                      52.00,
                                    ),
                                    width: getHorizontalSize(
                                      327.00,
                                    ),
                                    child: TextFormField(
                                      controller: confirmpasscon,
                                      decoration: InputDecoration(
                                        hintText: 'ยืนยันรหัสผ่านใหม่',
                                        hintStyle: TextStyle(
                                          fontSize: getFontSize(
                                            18.0,
                                          ),
                                          color: ColorConstant.gray700,
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              12.00,
                                            ),
                                          ),
                                          borderSide: BorderSide(
                                            color: ColorConstant.gray700,
                                            width: 1,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              12.00,
                                            ),
                                          ),
                                          borderSide: BorderSide(
                                            color: ColorConstant.gray700,
                                            width: 1,
                                          ),
                                        ),
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              24.00,
                                            ),
                                            right: getHorizontalSize(
                                              10.00,
                                            ),
                                          ),
                                          child: Container(
                                            height: getSize(
                                              20.00,
                                            ),
                                            width: getSize(
                                              20.00,
                                            ),
                                            child: SvgPicture.asset(
                                              ImageConstant.imgPassword611,
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
                                        suffixIcon: Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              10.00,
                                            ),
                                            right: getHorizontalSize(
                                              23.00,
                                            ),
                                          ),
                                          child: Container(
                                            height: getSize(
                                              24.00,
                                            ),
                                            width: getSize(
                                              24.00,
                                            ),
                                            child: SvgPicture.asset(
                                              ImageConstant.imgEye1,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                        ),
                                        suffixIconConstraints: BoxConstraints(
                                          minWidth: getSize(
                                            24.00,
                                          ),
                                          minHeight: getSize(
                                            24.00,
                                          ),
                                        ),
                                        isDense: true,
                                        contentPadding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            19.50,
                                          ),
                                          bottom: getVerticalSize(
                                            19.50,
                                          ),
                                        ),
                                      ),
                                      style: TextStyle(
                                        color: ColorConstant.gray700,
                                        fontSize: getFontSize(
                                          18.0,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    changenewpass();
                                  },
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          18.00,
                                        ),
                                        top: getVerticalSize(
                                          128.00,
                                        ),
                                        right: getHorizontalSize(
                                          18.00,
                                        ),
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: getVerticalSize(
                                          56.00,
                                        ),
                                        width: getHorizontalSize(
                                          327.00,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.teal600,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              16.00,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          "เปลี่ยนรหัสผ่าน",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
