import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/main.dart';
import 'package:hires/presentation/set_b1_screen/set_b1_screen.dart';

class Start1Screen extends StatefulWidget {
  static String id = "Start1Screen";

  @override
  State<Start1Screen> createState() => _Start1ScreenState();
}

class _Start1ScreenState extends State<Start1Screen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => MainPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.teal600,
      body: Container(
        width: size.width,
        child: Container(
          decoration: BoxDecoration(
            color: ColorConstant.teal600,
          ),
          child: Center(
            child: Text(
              "${Constants.appName}",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.whiteA700,
                fontSize: getFontSize(
                  40,
                ),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
