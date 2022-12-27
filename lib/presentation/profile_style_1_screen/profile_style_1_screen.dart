
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileStyle1Screen extends StatefulWidget {
  static String id = "RegisterScreen";

  @override
  State<ProfileStyle1Screen> createState() => _ProfileStyle1Screen();
}

class _ProfileStyle1Screen extends State<ProfileStyle1Screen> {
  String id = "ProfileStyle1Screen";
  bool obscure1 = true;
  bool obscure2 = true;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;

    final user = FirebaseAuth.instance.currentUser!;
    Future<DocumentSnapshot> userData =
        FirebaseFirestore.instance.collection("users").doc(user.uid).get();
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getFontSize(
              24,
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
      body: SafeArea(
        child: Container(
          width: size.width,
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Align(
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            16.00,
                          ),
                          bottom: getVerticalSize(
                            30.00,
                          ),
                        ),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: getSize(
                                  104.00,
                                ),
                                width: getSize(
                                  104.00,
                                ),
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    24.00,
                                  ),
                                  top: getVerticalSize(
                                    8.00,
                                  ),
                                  right: getHorizontalSize(
                                    24.00,
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.indigo50,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      52.00,
                                    ),
                                  ),
                                ),
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  color: ColorConstant.indigo50,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        52.00,
                                      ),
                                    ),
                                  ),
                                  child: Stack(
                                    alignment: Alignment.centerLeft,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getSize(
                                              52.00,
                                            ),
                                          ),
                                          child: Image.asset(
                                            ImageConstant.imgChristinawocin7,
                                            height: getSize(
                                              104.00,
                                            ),
                                            width: getSize(
                                              104.00,
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          height: getSize(
                                            104.00,
                                          ),
                                          width: getSize(
                                            104.00,
                                          ),
                                          child: SvgPicture.asset(
                                            ImageConstant.imgMaskgroup19,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              gg(isDark, userData)
                            ]),
                      ),
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

  Widget gg(bool isDark, Future<DocumentSnapshot<Object?>> userData) {
    return Padding(
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
              child: FutureBuilder<DocumentSnapshot>(
                  future: userData,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      Map userData = snapshot.data?.data() as Map;
                      
                      return TextField(
                        // controller: emailcontroller,
                        controller: TextEditingController(text: userData['username']),
                        decoration: InputDecoration(
                          labelText: "Username",
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          labelStyle: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              24.0,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                            
                          ),
                          // hintText: 'Email',
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
                              child: Icon(
                                        Icons.person,
                                        color: isDark
                                            ? Colors.white
                                            : Colors.black,
                                      )

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
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            14.0,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      );
                    } else {
                      return CircularProgressIndicator();
                    }
                  }),
            ),
          ),
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
                    child: FutureBuilder<DocumentSnapshot>(
                        future: userData,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            Map userData = snapshot.data?.data() as Map;
                            return TextField(
                              controller: TextEditingController(
                                  text: userData['email']),
                              // controller: namecontroller,
                              decoration: InputDecoration(
                                labelText: "Email",
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.always,
                                labelStyle: TextStyle(
                                  color: ColorConstant.gray900,
                                  fontSize: getFontSize(
                                    24.0,
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
                                      ImageConstant.imgMailoutline11,
                                      fit: BoxFit.contain,
                                      color: Colors.white,
                                    )
                                  : SvgPicture.asset(
                                      ImageConstant.imgMailoutline11,
                                      fit: BoxFit.contain,
                                    ),),
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    30.00,
                                  ),
                                  top: getVerticalSize(
                                    19.50,
                                  ),
                                  right: getHorizontalSize(
                                    30.00,
                                  ),
                                  bottom: getVerticalSize(
                                    18.50,
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
                child: TextField(
                  // controller: passcontroller,
                  obscureText: obscure1,
                  decoration: InputDecoration(
                    labelText: "New Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        24.0,
                      ),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
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
                      left: getHorizontalSize(
                        30.00,
                      ),
                      top: getVerticalSize(
                        19.50,
                      ),
                      right: getHorizontalSize(
                        30.00,
                      ),
                      bottom: getVerticalSize(
                        18.50,
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
                              ? Icon(Icons.visibility_off_outlined,
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
                child: TextField(
                  obscureText: obscure2,
                  decoration: InputDecoration(
                    // hintText: 'Confirm Password',
                    labelText: "Confirm Password",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    labelStyle: TextStyle(
                      color: ColorConstant.gray900,
                      fontSize: getFontSize(
                        24.0,
                      ),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
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
                      left: getHorizontalSize(
                        30.00,
                      ),
                      top: getVerticalSize(
                        19.50,
                      ),
                      right: getHorizontalSize(
                        30.00,
                      ),
                      bottom: getVerticalSize(
                        18.50,
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
                              ? Icon(Icons.visibility_off_outlined,
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
                onTap: () {
                  // final name = namecontroller.text;
                  // final email = emailcontroller.text;
                  // final pass = passcontroller.text;
                  // auth.signUp(email:email,password: pass,name: name);
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
                    "Save",
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
              child: GestureDetector(
                onTap: () {
                  // final name = namecontroller.text;
                  // final email = emailcontroller.text;
                  // final pass = passcontroller.text;
                  // auth.signUp(email:email,password: pass,name: name);
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
                    color: ColorConstant.red700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16.00,
                      ),
                    ),
                  ),
                  child: Text(
                    "Delete account",
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
    );
  }
}
