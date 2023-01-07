import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/log_in1_screen/log_in1_screen.dart';
import 'package:hires/presentation/log_in_screen/log_in_screen.dart';
import '../../auth.dart';

class RegisterScreen extends StatefulWidget {
  static String id = "RegisterScreen";

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var auth = new Auth();
  final _formKey = GlobalKey<FormState>();
  final emailcontroller = TextEditingController();
  final passcontroller = TextEditingController();
  final passchkcontroller = TextEditingController();

  final namecontroller = TextEditingController();
  bool obscure1 = true;
  bool obscure2 = true;

  void ShowSaveAlert(String txt) {
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
                    padding: EdgeInsets.only(
                        top: getVerticalSize(5), bottom: getVerticalSize(10)),
                    child: Text(
                      txt,
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

  String pass1 = "0", pass2 = "1";

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        16.00,
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
                                      color: isDark
                                          ? Colors.white
                                          : Colors.black)),
                            ),
                          ),
                        ),
                        // Align(
                        //   alignment: context.locale == Constants.engLocal
                        //       ? Alignment.centerLeft
                        //       : Alignment.centerRight,
                        //   child: Padding(
                        //     padding: EdgeInsets.only(
                        //       left: getHorizontalSize(
                        //         24.00,
                        //       ),
                        //       top: getVerticalSize(
                        //         23.00,
                        //       ),
                        //       right: getHorizontalSize(
                        //         24.00,
                        //       ),
                        //     ),
                        //     child: Text(
                        //       "",
                        //       overflow: TextOverflow.ellipsis,
                        //       textAlign: TextAlign.center,
                        //       style: TextStyle(
                        //         color: ColorConstant.teal600,
                        //         fontSize: getFontSize(
                        //           21.55,
                        //         ),
                        //         fontFamily: 'Poppins',
                        //         fontWeight: FontWeight.w600,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Align(
                          alignment: context.locale == Constants.engLocal
                              ? Alignment.centerLeft
                              : Alignment.centerRight,
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
                              "Registration 👍",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
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
                          alignment: context.locale == Constants.engLocal
                              ? Alignment.centerLeft
                              : Alignment.centerRight,
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
                              "Let’s Register. Apply to jobs!",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: isDark
                                    ? Colors.white
                                    : ColorConstant.gray9007e,
                                fontSize: getFontSize(
                                  14,
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
                  Form(
                    key: _formKey,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                52.00,
                              ),
                              width: getHorizontalSize(
                                327.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  31.00,
                                ),
                                bottom: getVerticalSize(
                                  25.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Container(
                                    height: getVerticalSize(
                                      52.00,
                                    ),
                                    width: getHorizontalSize(
                                      327.00,
                                    ),
                                    child: TextFormField(
                                      controller: namecontroller,
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Please enter some text';
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        hintText: 'Username',
                                        hintStyle: TextStyle(
                                          fontSize: getFontSize(
                                            14.0,
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
                                              child: Icon(Icons.person)),
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
                                            25.50,
                                          ),
                                          bottom: getVerticalSize(
                                            .50,
                                          ),
                                        ),
                                      ),
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          14.0,
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
                              left: getHorizontalSize(
                                24.00,
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
                                controller: emailcontroller,
                                validator: (value) => validateEmail(value),
                                decoration: InputDecoration(
                                  hintText: 'Email',
                                  hintStyle: TextStyle(
                                    fontSize: getFontSize(
                                      14.0,
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
                                      child: Icon(Icons.email),
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
                                      25.50,
                                    ),
                                    bottom: getVerticalSize(
                                      .50,
                                    ),
                                  ),
                                ),
                                style: TextStyle(
                                  color: ColorConstant.gray900,
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
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  24.00,
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
                                  controller: passcontroller,
                                  onChanged: ((value) {
                                    setState(() {
                                      pass1 = passcontroller.text;
                                    });
                                  }),
                                  validator: validatePassword,
                                  obscureText: obscure1,
                                  decoration: InputDecoration(
                                    hintText: 'Password',
                                    hintStyle: TextStyle(
                                      fontSize: getFontSize(
                                        14.0,
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
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.imgPassword613,
                                                fit: BoxFit.contain,
                                                color: Colors.white,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.imgPassword613,
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
                                        25.50,
                                      ),
                                      bottom: getVerticalSize(
                                        .50,
                                      ),
                                    ),
                                    suffixIcon: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: getHorizontalSize(16)),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              obscure1 = !obscure1;
                                            });
                                          },
                                          child: obscure1
                                              ? Icon(
                                                  Icons.visibility_off_outlined,
                                                  color: isDark
                                                      ? Colors.white
                                                      : ColorConstant.black900)
                                              : Icon(
                                                  Icons.visibility_outlined,
                                                  color: isDark
                                                      ? Colors.white
                                                      : ColorConstant.black900,
                                                )),
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: ColorConstant.gray900,
                                    fontSize: getFontSize(
                                      14.0,
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
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  24.00,
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
                                  obscureText: obscure2,
                                  controller: passchkcontroller,
                                  onChanged: ((value) {
                                    setState(() {
                                      pass2 = passchkcontroller.text;
                                    });
                                  }),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Please enter some text';
                                    }
                                    return null;
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'Confirm Password',
                                    hintStyle: TextStyle(
                                      fontSize: getFontSize(
                                        14.0,
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
                                        child: isDark
                                            ? SvgPicture.asset(
                                                ImageConstant.imgPassword613,
                                                fit: BoxFit.contain,
                                                color: Colors.white,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.imgPassword613,
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
                                        25.50,
                                      ),
                                      bottom: getVerticalSize(
                                        .50,
                                      ),
                                    ),
                                    suffixIcon: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: getHorizontalSize(16)),
                                      child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              obscure2 = !obscure2;
                                            });
                                          },
                                          child: obscure2
                                              ? Icon(
                                                  Icons.visibility_off_outlined,
                                                  color: isDark
                                                      ? Colors.white
                                                      : ColorConstant.black900)
                                              : Icon(
                                                  Icons.visibility_outlined,
                                                  color: isDark
                                                      ? Colors.white
                                                      : ColorConstant.black900,
                                                )),
                                    ),
                                  ),
                                  style: TextStyle(
                                    color: ColorConstant.gray900,
                                    fontSize: getFontSize(
                                      14.0,
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
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  32.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: GestureDetector(
                                onTap: () async {
                                  if (_formKey.currentState!.validate()) {
                                    if (pass1 != pass2) {
                                      ShowSaveAlert("รหัสผ่านไม่เหมือนกัน");
                                    } else {
                                      final name = namecontroller.text;
                                      final email = emailcontroller.text;
                                      final pass = passcontroller.text;
                                      auth.signUp(context,
                                          email: email,
                                          password: pass,
                                          name: name);
                                    }
                                  }
                                },
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
                                    "Register",
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
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  32.00,
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
                                  10.00,
                                ),
                                top: getVerticalSize(
                                  48.00,
                                ),
                                right: getHorizontalSize(
                                  10.00,
                                ),
                              ),
                              child: Container(
                                  height: getVerticalSize(
                                    56.00,
                                  ),
                                  width: getHorizontalSize(
                                    200.00,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: ColorConstant.whiteA700),
                                          padding: EdgeInsets.all(getSize(8)),
                                          child: SvgPicture.asset(
                                              ImageConstant.appleLogo)),
                                      Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: ColorConstant.whiteA700),
                                          padding: EdgeInsets.all(getSize(8)),
                                          child: SvgPicture.asset(
                                              ImageConstant.googleLogo)),
                                      Container(
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: ColorConstant.whiteA700),
                                          padding: EdgeInsets.all(getSize(8)),
                                          child: SvgPicture.asset(
                                              ImageConstant.facebookLogo)),
                                    ],
                                  )),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    24.00,
                                  ),
                                  top: getVerticalSize(
                                    32.00,
                                  ),
                                  right: getHorizontalSize(
                                    24.00,
                                  ),
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Have',
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
                                        text: ' ',
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
                                        text: 'an account? ',
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
                                        text: 'Log in',
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

  String? validateEmail(String? value) {
    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
    final regex = RegExp(pattern);
    if (value!.isEmpty) return 'Enter a email ';
    return value.isNotEmpty && !regex.hasMatch(value)
        ? 'Enter a valid email address'
        : null;
  }

  String? validatePassword(String? value) {
    // add your custom validation here.
    if (value!.isEmpty) {
      return 'Please enter some text';
    }
    if (value.length < 7) {
      return 'Must be more than 6 charater';
    }
    return null;
    //   RegExp regex =
    //       RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    //   if (value!.isEmpty) {
    //     return 'Please enter password';
    //   } else {
    //     if (!regex.hasMatch(value)) {
    //       return 'Enter valid password';
    //     } else {
    //       return null;
    //     }
    //   }
    // }
  }
}
