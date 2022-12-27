import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ProfileDropDraweritem extends StatelessWidget {
  static String id="ProfileDropDraweritem";
  @override
  Widget build(BuildContext context) {
    return Container(
     
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: ColorConstant.whiteA700,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
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
                                16.00,
                              ),
                              right: getHorizontalSize(
                                16.00,
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
                                        ImageConstant.imgChristinawocin,
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
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        bottom: getVerticalSize(
                                          0.64,
                                        ),
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          103.36,
                                        ),
                                        width: getHorizontalSize(
                                          104.00,
                                        ),
                                        child: SvgPicture.asset(
                                          ImageConstant.imgMaskgroup3,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  12.00,
                                ),
                              ),
                              child: Text(
                                "Haley Jessica",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.gray900,
                                  fontSize: getFontSize(
                                    20,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                16.00,
                              ),
                              top: getVerticalSize(
                                4.00,
                              ),
                              right: getHorizontalSize(
                                16.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "UX Designer",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.gray500,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      4.00,
                                    ),
                                    top: getVerticalSize(
                                      4.00,
                                    ),
                                    bottom: getVerticalSize(
                                      3.00,
                                    ),
                                  ),
                                  child: Container(
                                    height: getSize(
                                      12.00,
                                    ),
                                    width: getSize(
                                      12.00,
                                    ),
                                    child: SvgPicture.asset(
                                      ImageConstant.imgIcroundverifi,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: getSize(
                          20.00,
                        ),
                        width: getSize(
                          20.00,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgAkariconscros1,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "View Profile",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.teal600,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: getSize(
                          20.00,
                        ),
                        width: getSize(
                          20.00,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgGroup187,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        "Personal Info",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: getVerticalSize(
                          21.00,
                        ),
                        width: getHorizontalSize(
                          16.00,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgVector4,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        "Applications",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: getVerticalSize(
                          20.00,
                        ),
                        width: getHorizontalSize(
                          16.50,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgGroup4,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        "Proposals",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: getVerticalSize(
                          21.67,
                        ),
                        width: getHorizontalSize(
                          17.33,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgGroup186,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        "Resumes",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: getVerticalSize(
                          18.70,
                        ),
                        width: getHorizontalSize(
                          20.00,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgGroup188,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        "Portfolio",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: getVerticalSize(
                          21.00,
                        ),
                        width: getHorizontalSize(
                          16.00,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgVector5,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        "Cover Letters",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            2.00,
                          ),
                          bottom: getVerticalSize(
                            3.00,
                          ),
                        ),
                        child: Container(
                          height: getSize(
                            18.00,
                          ),
                          width: getSize(
                            18.00,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgVector6,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            17.00,
                          ),
                        ),
                        child: Text(
                          "Settings",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray900,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            3.00,
                          ),
                          bottom: getVerticalSize(
                            3.33,
                          ),
                        ),
                        child: Container(
                          height: getVerticalSize(
                            16.67,
                          ),
                          width: getHorizontalSize(
                            20.00,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgGroup191,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            14.00,
                          ),
                        ),
                        child: Text(
                          "Logout",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.redA700,
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
                  Container(
                    decoration: BoxDecoration(
                      color: ColorConstant.teal600,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          16.00,
                        ),
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
                              32.00,
                            ),
                            top: getVerticalSize(
                              16.00,
                            ),
                            bottom: getVerticalSize(
                              16.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              24.00,
                            ),
                            width: getHorizontalSize(
                              18.63,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgGroup181,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              11.87,
                            ),
                            top: getVerticalSize(
                              16.00,
                            ),
                            right: getHorizontalSize(
                              31.50,
                            ),
                            bottom: getVerticalSize(
                              16.00,
                            ),
                          ),
                          child: Text(
                            "Go Premium",
                            overflow: TextOverflow.ellipsis,
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    
    
    
    );
  }
}
