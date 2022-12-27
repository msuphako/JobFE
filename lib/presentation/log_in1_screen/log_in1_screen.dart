import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class LogIn1Screen extends StatelessWidget {
  static String id="LogIn1Screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.black900,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
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
                          Align(
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
                                  ImageConstant.imgAkariconschev22,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  19.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: Text(
                                "Hires",
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
                            alignment: Alignment.centerLeft,
                            child: Padding(
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
                              child: Text(
                                "Welcome Back 👋",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.bluegray101,
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
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  7.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: Text(
                                "Let’s log in. Apply to jobs!",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.bluegray1007e,
                                  fontSize: getFontSize(
                                    14,
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
                                47.00,
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
                                decoration: InputDecoration(
                                  hintText: 'E-mail',
                                  hintStyle: TextStyle(
                                    fontSize: getFontSize(
                                      14.0,
                                    ),
                                    color: ColorConstant.gray400,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    borderSide: BorderSide(
                                      color: ColorConstant.gray400,
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
                                      color: ColorConstant.gray400,
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
                                        19.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgMailoutline12,
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
                                      19.50,
                                    ),
                                    bottom: getVerticalSize(
                                      19.50,
                                    ),
                                  ),
                                ),
                                style: TextStyle(
                                  color: ColorConstant.gray400,
                                  fontSize: getFontSize(
                                    14.0,
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
                                obscureText: true,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    fontSize: getFontSize(
                                      14.0,
                                    ),
                                    color: ColorConstant.gray400,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        12.00,
                                      ),
                                    ),
                                    borderSide: BorderSide(
                                      color: ColorConstant.gray400,
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
                                      color: ColorConstant.gray400,
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
                                        ImageConstant.imgPassword615,
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
                                        ImageConstant.imgEye5,
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
                                  color: ColorConstant.gray400,
                                  fontSize: getFontSize(
                                    14.0,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
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
                                  32.00,
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
                                  "Log in",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.bluegray101,
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
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  18.00,
                                ),
                                top: getVerticalSize(
                                  40.00,
                                ),
                                right: getHorizontalSize(
                                  18.00,
                                ),
                              ),
                              child: Text(
                                "Forgot Password?",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: ColorConstant.teal600,
                                  fontSize: getFontSize(
                                    15,
                                  ),
                                  fontFamily: 'Circular Std',
                                  fontWeight: FontWeight.w400,
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
                                  48.00,
                                ),
                                right: getHorizontalSize(
                                  18.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      0.50,
                                    ),
                                    width: getHorizontalSize(
                                      98.00,
                                    ),
                                    margin: EdgeInsets.only(
                                      top: getVerticalSize(
                                        8.00,
                                      ),
                                      bottom: getVerticalSize(
                                        7.50,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray400,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Or continue with",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray400,
                                        fontSize: getFontSize(
                                          13,
                                        ),
                                        fontFamily: 'Circular Std',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      0.50,
                                    ),
                                    width: getHorizontalSize(
                                      98.00,
                                    ),
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        16.00,
                                      ),
                                      top: getVerticalSize(
                                        8.00,
                                      ),
                                      bottom: getVerticalSize(
                                        7.50,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray400,
                                    ),
                                  ),
                                ],
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
                                  48.00,
                                ),
                                right: getHorizontalSize(
                                  18.00,
                                ),
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  56.00,
                                ),
                                width: getHorizontalSize(
                                  216.00,
                                ),
                                child: SvgPicture.asset(
                                  ImageConstant.imgGroup572,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  18.00,
                                ),
                                top: getVerticalSize(
                                  48.00,
                                ),
                                right: getHorizontalSize(
                                  18.00,
                                ),
                              ),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Haven’t an account? ',
                                      style: TextStyle(
                                        color: ColorConstant.gray401,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Circular Std',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Register',
                                      style: TextStyle(
                                        color: ColorConstant.teal600,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Circular Std',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
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
