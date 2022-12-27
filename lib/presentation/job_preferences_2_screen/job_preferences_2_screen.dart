import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class JobPreferences2Screen extends StatelessWidget {
  static String id="JobPreferences2Screen";
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
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
                                          18.00,
                                        ),
                                        right: getHorizontalSize(
                                          122.00,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            height: getSize(
                                              24.00,
                                            ),
                                            width: getSize(
                                              24.00,
                                            ),
                                            child: SvgPicture.asset(
                                              ImageConstant.imgAkariconschev16,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                82.00,
                                              ),
                                              top: getVerticalSize(
                                                1.00,
                                              ),
                                              bottom: getVerticalSize(
                                                2.00,
                                              ),
                                            ),
                                            child: Text(
                                              "Job Preferences",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: ColorConstant.gray900,
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Select Job Roles",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "See all",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: ColorConstant.gray500,
                                      fontSize: getFontSize(
                                        13,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                16.00,
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
                                        left: getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: getVerticalSize(
                                          37.00,
                                        ),
                                        width: getHorizontalSize(
                                          159.00,
                                        ),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              97.00,
                                            ),
                                          ),
                                          border: Border.all(
                                            color: ColorConstant.gray500,
                                            width: getHorizontalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          "Product Designer",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(
                                              14,
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
                                          12.00,
                                        ),
                                        right: getHorizontalSize(
                                          27.00,
                                        ),
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          37.00,
                                        ),
                                        width: getHorizontalSize(
                                          153.00,
                                        ),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: 'Motion Designer',
                                            hintStyle: TextStyle(
                                              fontSize: getFontSize(
                                                14.0,
                                              ),
                                              color: ColorConstant.whiteA700,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  97.00,
                                                ),
                                              ),
                                              borderSide: BorderSide.none,
                                            ),
                                            filled: true,
                                            fillColor: ColorConstant.blueA200,
                                            isDense: true,
                                            contentPadding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                20.00,
                                              ),
                                              top: getVerticalSize(
                                                11.50,
                                              ),
                                              bottom: getVerticalSize(
                                                11.50,
                                              ),
                                            ),
                                          ),
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(
                                              14.0,
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
                                      12.00,
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
                                          left: getHorizontalSize(
                                            24.00,
                                          ),
                                        ),
                                        child: Container(
                                          height: getVerticalSize(
                                            37.00,
                                          ),
                                          width: getHorizontalSize(
                                            124.00,
                                          ),
                                          child: TextFormField(
                                            decoration: InputDecoration(
                                              hintText: 'UX Designer',
                                              hintStyle: TextStyle(
                                                fontSize: getFontSize(
                                                  14.0,
                                                ),
                                                color: ColorConstant.whiteA700,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  getHorizontalSize(
                                                    97.00,
                                                  ),
                                                ),
                                                borderSide: BorderSide.none,
                                              ),
                                              filled: true,
                                              fillColor: ColorConstant.blueA200,
                                              isDense: true,
                                              contentPadding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  20.00,
                                                ),
                                                top: getVerticalSize(
                                                  11.50,
                                                ),
                                                bottom: getVerticalSize(
                                                  11.50,
                                                ),
                                              ),
                                            ),
                                            style: TextStyle(
                                              color: ColorConstant.whiteA700,
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
                                            12.00,
                                          ),
                                          right: getHorizontalSize(
                                            47.00,
                                          ),
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(
                                            37.00,
                                          ),
                                          width: getHorizontalSize(
                                            168.00,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                97.00,
                                              ),
                                            ),
                                            border: Border.all(
                                              color: ColorConstant.gray500,
                                              width: getHorizontalSize(
                                                1.00,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "Graphics Designer",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                14,
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
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      12.00,
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
                                          left: getHorizontalSize(
                                            24.00,
                                          ),
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(
                                            37.00,
                                          ),
                                          width: getHorizontalSize(
                                            184.00,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                97.00,
                                              ),
                                            ),
                                            border: Border.all(
                                              color: ColorConstant.gray500,
                                              width: getHorizontalSize(
                                                1.00,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "Full-Stack Developer",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                14,
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
                                            12.00,
                                          ),
                                          right: getHorizontalSize(
                                            44.00,
                                          ),
                                        ),
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(
                                            37.00,
                                          ),
                                          width: getHorizontalSize(
                                            111.00,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                97.00,
                                              ),
                                            ),
                                            border: Border.all(
                                              color: ColorConstant.gray500,
                                              width: getHorizontalSize(
                                                1.00,
                                              ),
                                            ),
                                          ),
                                          child: Text(
                                            "Developer",
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                14,
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
                              ],
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
                                  40.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Select Location",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "See all",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: ColorConstant.gray500,
                                      fontSize: getFontSize(
                                        13,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                16.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      24.00,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      37.00,
                                    ),
                                    width: getHorizontalSize(
                                      114.00,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          97.00,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.gray500,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Worldwide",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          14,
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
                                      12.00,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      37.00,
                                    ),
                                    width: getHorizontalSize(
                                      68.00,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.blueA200,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          97.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "USA",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          14,
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
                                      12.00,
                                    ),
                                    right: getHorizontalSize(
                                      37.00,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      37.00,
                                    ),
                                    width: getHorizontalSize(
                                      108.00,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          97.00,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.gray500,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "California",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          14,
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
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                12.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      24.00,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      37.00,
                                    ),
                                    width: getHorizontalSize(
                                      103.00,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          97.00,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.gray500,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "San Jose",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          14,
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
                                      12.00,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      37.00,
                                    ),
                                    width: getHorizontalSize(
                                      104.00,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          97.00,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.gray500,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "New York",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          14,
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
                                      12.00,
                                    ),
                                    right: getHorizontalSize(
                                      31.00,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      37.00,
                                    ),
                                    width: getHorizontalSize(
                                      89.00,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          97.00,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.gray500,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Seattle",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          14,
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
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Job Type",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "See all",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: ColorConstant.gray500,
                                      fontSize: getFontSize(
                                        13,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                16.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      24.00,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      37.00,
                                    ),
                                    width: getHorizontalSize(
                                      67.00,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.blueA200,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          97.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Any",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          14,
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
                                      12.00,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      37.00,
                                    ),
                                    width: getHorizontalSize(
                                      106.00,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          97.00,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.gray500,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Full-Time",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          14,
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
                                      12.00,
                                    ),
                                    right: getHorizontalSize(
                                      43.00,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      37.00,
                                    ),
                                    width: getHorizontalSize(
                                      111.00,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          97.00,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.gray500,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Part-Time",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          14,
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
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  44.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    "Office",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.gray900,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    "See all",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                      color: ColorConstant.gray500,
                                      fontSize: getFontSize(
                                        13,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                16.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      24.00,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      37.00,
                                    ),
                                    width: getHorizontalSize(
                                      67.00,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.blueA200,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          97.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Any",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.whiteA700,
                                        fontSize: getFontSize(
                                          14,
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
                                      12.00,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      37.00,
                                    ),
                                    width: getHorizontalSize(
                                      94.00,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          97.00,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.gray500,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "On-Site",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          14,
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
                                      12.00,
                                    ),
                                    right: getHorizontalSize(
                                      71.00,
                                    ),
                                  ),
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      37.00,
                                    ),
                                    width: getHorizontalSize(
                                      95.00,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          97.00,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.gray500,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Remote",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          14,
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
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  33.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
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
