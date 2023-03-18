import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/auth.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/employer/employer_register.dart';
import 'package:hires/presentation/forgot_password_page/forgot_password_page.dart';
import 'package:hires/presentation/register1_screen/register1_screen.dart';

class LogInScreen extends StatefulWidget {
  static String id = "LogInScreen";

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  var auth = Auth();
  bool obscure1 = true;
  bool isEmployee = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final _textFieldController = TextEditingController();

  // final String email = "", pass = "";
  // @override
  // void formchange(String email, String pass) {
  //   setState(() {
  //     email = email;
  //     pass = pass;
  //   });
  // }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Card(
            child: Padding(
              padding: EdgeInsets.only(
                  top: getVerticalSize(size.height / 10),
                  left: getHorizontalSize(10),
                  right: getHorizontalSize(10)),
              child: Container(
                width: size.width,
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
                            10.00,
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
                              alignment: context.locale == Constants.engLocal
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    22.00,
                                  ),
                                  top: getVerticalSize(
                                    14.00,
                                  ),
                                  right: getHorizontalSize(
                                    22.00,
                                  ),
                                ),
                                child: Text(
                                  "",
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
                              alignment: context.locale == Constants.engLocal
                                  ? Alignment.center
                                  : Alignment.center,
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
                                  "ยินดีต้อนรับ 👋",
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
                            //  Align(
                            //   alignment: context.locale == Constants.engLocal
                            //       ? Alignment.centerLeft
                            //       : Alignment.centerRight,
                            //   child: Padding(
                            //     padding: EdgeInsets.only(
                            //       left: getHorizontalSize(
                            //         24.00,
                            //       ),
                            //       top: getVerticalSize(
                            //         7.00,
                            //       ),
                            //       right: getHorizontalSize(
                            //         24.00,
                            //       ),
                            //     ),
                            //     child: Text(
                            //       "เข้าสู่ระบบ" ,
                            //       overflow: TextOverflow.ellipsis,
                            //       textAlign: TextAlign.start,
                            //       style: TextStyle(
                            //         color: ColorConstant.gray700,
                            //         fontSize: getFontSize(
                            //           19,
                            //         ),
                            //         fontFamily: 'Poppins',
                            //         fontWeight: FontWeight.w400,
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  20.00,
                                ),
                                bottom: getVerticalSize(
                                  10.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(25),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isEmployee = true;
                                          emailController.clear();
                                          passwordController.clear();
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: isEmployee
                                              ? Border(
                                                  bottom: BorderSide(
                                                      width: 1.5,
                                                      color: ColorConstant
                                                          .teal600),
                                                )
                                              : Border(),
                                        ),
                                        child: Text(
                                          "สำหรับหางาน",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: isEmployee
                                                ? ColorConstant.teal600
                                                : ColorConstant.gray700,
                                            fontSize: getFontSize(
                                              20,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: getHorizontalSize(25),
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isEmployee = false;
                                          emailController.clear();
                                          passwordController.clear();
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          border: isEmployee
                                              ? Border()
                                              : Border(
                                                  bottom: BorderSide(
                                                      width: 1.5,
                                                      color: ColorConstant
                                                          .teal600),
                                                ),
                                        ),
                                        child: Text(
                                          "สำหรับหาคน",
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: isEmployee
                                                ? ColorConstant.gray700
                                                : ColorConstant.teal600,
                                            fontSize: getFontSize(
                                              20,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Container(
                            //   alignment: Alignment.center,
                            //   child: Padding(
                            //     padding: EdgeInsets.only(
                            //       top: getVerticalSize(25),
                            //       bottom: getVerticalSize(10),
                            //     ),
                            //     child: GestureDetector(
                            //       onTap: () {
                            //         setState(() {
                            //           isEmployee = !isEmployee;
                            //           emailController.clear();
                            //           passwordController.clear();
                            //         });
                            //       },
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //           border: Border(
                            //             bottom: BorderSide(
                            //                 width: 1.5,
                            //                 color: ColorConstant.teal600),
                            //           ),
                            //         ),
                            //         child: Text(
                            //           isEmployee
                            //               ? "สำหรับผู้ประกอบการ"
                            //               : "สำหรับผู้หางาน",
                            //           textAlign: TextAlign.right,
                            //           style: TextStyle(
                            //             color: ColorConstant.teal600,
                            //             fontSize: getFontSize(
                            //               20,
                            //             ),
                            //             fontFamily: 'Poppins',
                            //             fontWeight: FontWeight.w500,
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),

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
                                  controller: emailController,
                                  onFieldSubmitted: (value) {
                                    auth.SignIn(emailController.text,
                                        passwordController.text, context);
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'อีเมล',
                                    hintStyle: TextStyle(
                                      fontSize: getFontSize(
                                        16.0,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
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
                                                ImageConstant.imgMailoutline1,
                                                fit: BoxFit.contain,
                                                color: Colors.white,
                                              )
                                            : SvgPicture.asset(
                                                ImageConstant.imgMailoutline1,
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
                                    fontSize: getFontSize(
                                      16.0,
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
                                  controller: passwordController,
                                  obscureText: obscure1,
                                  onFieldSubmitted: (value) {
                                    auth.SignIn(emailController.text,
                                        passwordController.text, context);
                                  },
                                  decoration: InputDecoration(
                                    hintText: 'รหัสผ่าน',
                                    hintStyle: TextStyle(
                                      fontSize: getFontSize(
                                        16.0,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w500,
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
                                        19.50,
                                      ),
                                      bottom: getVerticalSize(
                                        19.50,
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
                            // Stack(
                            //   children:[
                            //     Padding(
                            //     padding: EdgeInsets.only(
                            //       left: getHorizontalSize(
                            //         18.00,
                            //       ),
                            //       top: getVerticalSize(
                            //         32.00,
                            //       ),
                            //       right: getHorizontalSize(
                            //         18.00,
                            //       ),
                            //     ),
                            //     child: Align(
                            //       alignment: Alignment.centerLeft,
                            //       child: GestureDetector(
                            //         onTap: signIn,
                            //         child: Container(
                            //           alignment: Alignment.center,
                            //           height: getVerticalSize(
                            //             56.00,
                            //           ),
                            //           width: getHorizontalSize(
                            //             160.00,
                            //           ),
                            //           decoration: BoxDecoration(
                            //             color: ColorConstant.teal600,
                            //             borderRadius: BorderRadius.circular(
                            //               getHorizontalSize(
                            //                 16.00,
                            //               ),
                            //             ),
                            //           ),
                            //           child: Text(
                            //             "Log in",
                            //             textAlign: TextAlign.center,
                            //             style: TextStyle(
                            //               color: ColorConstant.whiteA700,
                            //               fontSize: getFontSize(
                            //                 16,
                            //               ),
                            //               fontFamily: 'Poppins',
                            //               fontWeight: FontWeight.w500,
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            //   Padding(
                            //     padding: EdgeInsets.only(
                            //       left: getHorizontalSize(
                            //         200.00,
                            //       ),
                            //       top: getVerticalSize(
                            //         32.00,
                            //       ),
                            //       right: getHorizontalSize(
                            //         18.00,
                            //       ),
                            //     ),
                            //     child: Align(
                            //       alignment: Alignment.centerLeft,
                            //       child: GestureDetector(
                            //         onTap: signIn,
                            //         child: Container(
                            //           alignment: Alignment.center,
                            //           height: getVerticalSize(
                            //             56.00,
                            //           ),
                            //           width: getHorizontalSize(
                            //             160.00,
                            //           ),
                            //           decoration: BoxDecoration(
                            //             color: ColorConstant.teal600,
                            //             borderRadius: BorderRadius.circular(
                            //               getHorizontalSize(
                            //                 16.00,
                            //               ),
                            //             ),
                            //           ),
                            //           child: Text(
                            //             "Log in",
                            //             textAlign: TextAlign.center,
                            //             style: TextStyle(
                            //               color: ColorConstant.whiteA700,
                            //               fontSize: getFontSize(
                            //                 16,
                            //               ),
                            //               fontFamily: 'Poppins',
                            //               fontWeight: FontWeight.w500,
                            //             ),
                            //           ),
                            //         ),
                            //       ),
                            //     ),
                            //   ),

                            //                            ]
                            // ),

                            Container(
                              height: getVerticalSize(120),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        16.00,
                                      ),
                                      right: getHorizontalSize(
                                        10.00,
                                      ),
                                      left: getHorizontalSize(
                                        25.00,
                                      ),
                                      bottom: getVerticalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: GestureDetector(
                                        onTap: () {
                                          auth.SignIn(emailController.text,
                                              passwordController.text, context);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(
                                            56.00,
                                          ),
                                          width: getHorizontalSize(
                                            120.00,
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
                                            "เข้าสู่ระบบ",
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
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        16.00,
                                      ),
                                      right: getHorizontalSize(
                                        25.00,
                                      ),
                                      left: getHorizontalSize(
                                        10.00,
                                      ),
                                      bottom: getVerticalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: GestureDetector(
                                        onTap: () {
                                          isEmployee
                                              ? Navigator.pushReplacementNamed(
                                                  context, Register1Screen.id)
                                              : Navigator.pushReplacementNamed(
                                                  context,
                                                  EmpRegisterScreen.id);
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(
                                            56.00,
                                          ),
                                          width: getHorizontalSize(
                                            120.00,
                                          ),
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                width: 3,
                                                color: ColorConstant.teal600),
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                16.00,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "สมัครสมาชิก",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorConstant.teal600,
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
                                  if (isEmployee)
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            18.00,
                                          ),
                                          top: getVerticalSize(
                                            60.00,
                                          ),
                                          right: getHorizontalSize(
                                            18.00,
                                          ),
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(
                                                context, ForgotPasswordPage.id);
                                          },
                                          child: Text(
                                            "หรือ",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: ColorConstant.gray700,
                                              fontSize: getFontSize(
                                                16,
                                              ),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),

                            if (isEmployee)
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      10.00,
                                    ),
                                    top: getVerticalSize(
                                      10.00,
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
                                            MainAxisAlignment.center,
                                        children: [
                                          // Container(
                                          //     decoration: BoxDecoration(
                                          //         shape: BoxShape.circle,
                                          //         color:
                                          //             ColorConstant.whiteA700),
                                          //     padding:
                                          //         EdgeInsets.all(getSize(8)),
                                          //     child: SvgPicture.asset(
                                          //         ImageConstant.appleLogo)),
                                          GestureDetector(
                                            onTap: () {
                                              auth.signInWithGoogle();
                                            },
                                            child: Container(
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: ColorConstant
                                                        .whiteA700),
                                                padding:
                                                    EdgeInsets.all(getSize(8)),
                                                child: SvgPicture.asset(
                                                    ImageConstant.googleLogo)),
                                          ),
                                          // Container(
                                          //     decoration: BoxDecoration(
                                          //         shape: BoxShape.circle,
                                          //         color:
                                          //             ColorConstant.whiteA700),
                                          //     padding:
                                          //         EdgeInsets.all(getSize(8)),
                                          //     child: SvgPicture.asset(
                                          //         ImageConstant.facebookLogo)),
                                        ],
                                      )),
                                ),
                              ),
                            Align(
                              alignment: Alignment.center,
                              child: GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text('อีเมล'),
                                          actions: [
                                            GestureDetector(
                                              onTap: () {
                                                // changenewpass();
                                                auth.sendpasswordreset(
                                                    _textFieldController.text);
                                                setState(() {});
                                                Navigator.pop(context);
                                                _textFieldController.clear();
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    backgroundColor:
                                                        ColorConstant.teal600,
                                                    behavior: SnackBarBehavior
                                                        .floating,
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
                                                          "ส่งคำขอไปที่อีเมลแล้ว",
                                                          style: TextStyle(
                                                              fontSize: 16),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Align(
                                                alignment: Alignment.center,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      18.00,
                                                    ),
                                                    bottom: getVerticalSize(
                                                      10.00,
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
                                                      color:
                                                          ColorConstant.teal600,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          16.00,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Text(
                                                      "ยืนยัน",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        fontSize: getFontSize(
                                                          16,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                          content: TextField(
                                            controller: _textFieldController,
                                            decoration: InputDecoration(
                                                hintText:
                                                    "กรอกอีเมลที่ต้องการ"),
                                          ),
                                        );
                                      });
                                },
                                child: Container(
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      18.00,
                                    ),
                                    top: getVerticalSize(
                                      20.00,
                                    ),
                                    right: getHorizontalSize(
                                      18.00,
                                    ),
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'ลืมรหัสผ่าน? ',
                                          style: TextStyle(
                                            color: ColorConstant.gray600,
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Circular Std',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'กดที่นี่',
                                          style: TextStyle(
                                            color: ColorConstant.teal600,
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Circular Std',
                                            fontWeight: FontWeight.w700,
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
      ),
    );
  }
}
