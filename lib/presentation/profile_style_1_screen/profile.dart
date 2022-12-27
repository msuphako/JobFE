import 'package:easy_localization/easy_localization.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/presentation/resume_portfolio_upload_screen/resume_portfolio_upload_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import '../profile_style_2_screen/widgets/group541_item_widget.dart';

class Profile extends StatelessWidget {
  static String id = "Profile";
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: size.width,
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            18.00,
                          ),
                          right: getHorizontalSize(
                            24.00,
                          ),
                          top: getVerticalSize(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          GestureDetector(
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
                                    color:
                                        isDark ? Colors.white : Colors.black)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                3.00,
                              ),
                              bottom: getVerticalSize(
                                3.00,
                              ),
                            ),
                            child: Text(
                              "Edit",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: ColorConstant.gray400,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Circular Std',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Align(
                      alignment: Alignment.centerLeft,
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
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  12.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: Text(
                                "Haley Jessica",
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
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  6.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "UX Designer",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: isDark
                                          ? Colors.white
                                          : ColorConstant.gray500,
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
                                        ImageConstant.imgIcroundverifi6,
                                        fit: BoxFit.fill,
                                      ),
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
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            15.00,
                                          ),
                                          right: getHorizontalSize(
                                            14.00,
                                          ),
                                        ),
                                        child: Text(
                                          "27",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Circular Std',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: getVerticalSize(
                                              6.00,
                                            ),
                                          ),
                                          child: Text(
                                            "Applied",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            21.00,
                                          ),
                                          right: getHorizontalSize(
                                            21.00,
                                          ),
                                        ),
                                        child: Text(
                                          "19",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Circular Std',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: getVerticalSize(
                                              6.00,
                                            ),
                                          ),
                                          child: Text(
                                            "Reviewed",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            19.00,
                                          ),
                                          right: getHorizontalSize(
                                            19.00,
                                          ),
                                        ),
                                        child: Text(
                                          "14",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Circular Std',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                            top: getVerticalSize(
                                              6.00,
                                            ),
                                          ),
                                          child: Text(
                                            "Interview",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                12,
                                              ),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    20.00,
                                  ),
                                  top: getVerticalSize(
                                    40.00,
                                  ),
                                  right: getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          16.00,
                                        ),
                                        bottom: getVerticalSize(
                                          16.00,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    2.00,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    1.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  "Experience",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      16,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    1.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    2.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  "See all",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray400,
                                                    fontSize: getFontSize(
                                                      13,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          isDark
                                              ? darkCustomContainer(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        height: getVerticalSize(
                                                          44.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          43.00,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            15.00,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            15.00,
                                                          ),
                                                        ),
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                height: getSize(
                                                                  43.00,
                                                                ),
                                                                width: getSize(
                                                                  43.00,
                                                                ),
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top:
                                                                      getVerticalSize(
                                                                    1.00,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  bottom:
                                                                      getVerticalSize(
                                                                    1.00,
                                                                  ),
                                                                ),
                                                                child:
                                                                    Image.asset(
                                                                  ImageConstant
                                                                      .imgImage49,
                                                                  height:
                                                                      getSize(
                                                                    43.00,
                                                                  ),
                                                                  width:
                                                                      getSize(
                                                                    43.00,
                                                                  ),
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            16.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            16.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            15.00,
                                                          ),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                220.00,
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      bottom:
                                                                          getVerticalSize(
                                                                        1.00,
                                                                      ),
                                                                    ),
                                                                    child: Text(
                                                                      "UX Intern",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            getFontSize(
                                                                          14,
                                                                        ),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "San Jose , US",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                220.00,
                                                              ),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                top:
                                                                    getVerticalSize(
                                                                  3.00,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    "Spotify",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style:
                                                                        TextStyle(
                                                                      color: isDark
                                                                          ? Colors
                                                                              .white
                                                                          : ColorConstant
                                                                              .gray90087,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        13,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Dec 20 - Feb 21",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      color: isDark
                                                                          ? Colors
                                                                              .white
                                                                          : ColorConstant
                                                                              .gray90087,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        13,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              : lightCostumContainer(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        height: getVerticalSize(
                                                          44.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          43.00,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            15.00,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            15.00,
                                                          ),
                                                        ),
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                height: getSize(
                                                                  43.00,
                                                                ),
                                                                width: getSize(
                                                                  43.00,
                                                                ),
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top:
                                                                      getVerticalSize(
                                                                    1.00,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  bottom:
                                                                      getVerticalSize(
                                                                    1.00,
                                                                  ),
                                                                ),
                                                                child:
                                                                    Image.asset(
                                                                  ImageConstant
                                                                      .imgImage49,
                                                                  height:
                                                                      getSize(
                                                                    43.00,
                                                                  ),
                                                                  width:
                                                                      getSize(
                                                                    43.00,
                                                                  ),
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            16.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            16.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            15.00,
                                                          ),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                220.00,
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      bottom:
                                                                          getVerticalSize(
                                                                        1.00,
                                                                      ),
                                                                    ),
                                                                    child: Text(
                                                                      "UX Intern",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            getFontSize(
                                                                          14,
                                                                        ),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "San Jose , US",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                220.00,
                                                              ),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                top:
                                                                    getVerticalSize(
                                                                  3.00,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    "Spotify",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .gray90087,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        13,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Dec 20 - Feb 21",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .gray90087,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        13,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
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
                                        top: getVerticalSize(
                                          16.00,
                                        ),
                                        bottom: getVerticalSize(
                                          16.00,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    2.00,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    1.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  "Education",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      16,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    1.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    2.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  "See all",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray400,
                                                    fontSize: getFontSize(
                                                      13,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          isDark
                                              ? darkCustomContainer(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        height: getVerticalSize(
                                                          44.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          43.00,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            15.00,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            15.00,
                                                          ),
                                                        ),
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                height: getSize(
                                                                  43.00,
                                                                ),
                                                                width: getSize(
                                                                  43.00,
                                                                ),
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top:
                                                                      getVerticalSize(
                                                                    1.00,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  bottom:
                                                                      getVerticalSize(
                                                                    1.00,
                                                                  ),
                                                                ),
                                                                child:
                                                                    Image.asset(
                                                                  ImageConstant
                                                                      .education,
                                                                  height:
                                                                      getSize(
                                                                    43.00,
                                                                  ),
                                                                  width:
                                                                      getSize(
                                                                    43.00,
                                                                  ),
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            16.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            16.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            15.00,
                                                          ),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                220.00,
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      bottom:
                                                                          getVerticalSize(
                                                                        1.00,
                                                                      ),
                                                                    ),
                                                                    child: Text(
                                                                      "Computer Science",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            getFontSize(
                                                                          14,
                                                                        ),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Pasadena",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                220.00,
                                                              ),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                top:
                                                                    getVerticalSize(
                                                                  3.00,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    "Bachelor | Caltech",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style:
                                                                        TextStyle(
                                                                      color: isDark
                                                                          ? Colors
                                                                              .white
                                                                          : ColorConstant
                                                                              .gray90087,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        13,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "2017 - 2020",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .gray90087,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        13,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                )
                                              : lightCostumContainer(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        height: getVerticalSize(
                                                          44.00,
                                                        ),
                                                        width:
                                                            getHorizontalSize(
                                                          43.00,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            15.00,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            15.00,
                                                          ),
                                                        ),
                                                        child: Stack(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          children: [
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Container(
                                                                height: getSize(
                                                                  43.00,
                                                                ),
                                                                width: getSize(
                                                                  43.00,
                                                                ),
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  top:
                                                                      getVerticalSize(
                                                                    1.00,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  bottom:
                                                                      getVerticalSize(
                                                                    1.00,
                                                                  ),
                                                                ),
                                                                child:
                                                                    Image.asset(
                                                                  ImageConstant
                                                                      .education,
                                                                  height:
                                                                      getSize(
                                                                    43.00,
                                                                  ),
                                                                  width:
                                                                      getSize(
                                                                    43.00,
                                                                  ),
                                                                  fit: BoxFit
                                                                      .fill,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                          left:
                                                              getHorizontalSize(
                                                            16.00,
                                                          ),
                                                          top: getVerticalSize(
                                                            16.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                            24.00,
                                                          ),
                                                          bottom:
                                                              getVerticalSize(
                                                            15.00,
                                                          ),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                220.00,
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                      bottom:
                                                                          getVerticalSize(
                                                                        1.00,
                                                                      ),
                                                                    ),
                                                                    child: Text(
                                                                      "Computer Science",
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            getFontSize(
                                                                          14,
                                                                        ),
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "Pasadena",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          getFontSize(
                                                                        12,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                220.00,
                                                              ),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                top:
                                                                    getVerticalSize(
                                                                  3.00,
                                                                ),
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    "Bachelor | Caltech",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .gray90087,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        13,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "2017 - 2020",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                    style:
                                                                        TextStyle(
                                                                      color: ColorConstant
                                                                          .gray90087,
                                                                      fontSize:
                                                                          getFontSize(
                                                                        13,
                                                                      ),
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    33.00,
                                  ),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                            child: Text(
                                              "Resume",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                1.00,
                                              ),
                                              left: context.locale ==
                                                      Constants.engLocal
                                                  ? getHorizontalSize(
                                                      0.00,
                                                    )
                                                  : getHorizontalSize(20),
                                              right: context.locale ==
                                                      Constants.arLocal
                                                  ? getHorizontalSize(
                                                      0.00,
                                                    )
                                                  : getHorizontalSize(20),
                                            ),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.pushNamed(
                                                    context,
                                                    ResumePortfolioUploadScreen
                                                        .id);
                                              },
                                              child: Text(
                                                "Make a resume",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: ColorConstant.teal600,
                                                  fontSize: getFontSize(
                                                    13,
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
                                    Container(
                                      width: double.infinity,
                                      margin: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          24.00,
                                        ),
                                        top: getVerticalSize(
                                          11.00,
                                        ),
                                        right: getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color: isDark
                                            ? ColorConstant.darkbutton
                                            : ColorConstant.whiteA700,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                            color: isDark
                                                ? ColorConstant.darkBg
                                                : ColorConstant.black9000a,
                                            spreadRadius: getHorizontalSize(
                                              2.00,
                                            ),
                                            blurRadius: getHorizontalSize(
                                              2.00,
                                            ),
                                            offset: Offset(
                                              0,
                                              4,
                                            ),
                                          ),
                                        ],
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  8.00,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
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
                                                      alignment:
                                                          Alignment.center,
                                                      height: getVerticalSize(
                                                        14.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        32.00,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .blueA200,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          getHorizontalSize(
                                                            6.00,
                                                          ),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "CV",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          fontSize: getFontSize(
                                                            8,
                                                          ),
                                                          fontFamily:
                                                              'Circular Std',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    "Haley Jessica",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: getFontSize(
                                                        11,
                                                      ),
                                                      fontFamily:
                                                          'Circular Std',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      right: getHorizontalSize(
                                                        26.00,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: getVerticalSize(
                                                        14.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        35.00,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .deepPurple500,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          getHorizontalSize(
                                                            6.00,
                                                          ),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "PDF",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          fontSize: getFontSize(
                                                            8,
                                                          ),
                                                          fontFamily:
                                                              'Circular Std',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
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
                                              top: getVerticalSize(
                                                2.00,
                                              ),
                                              right: getHorizontalSize(
                                                24.00,
                                              ),
                                            ),
                                            child: Text(
                                              "UX Designer",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: isDark
                                                    ? Colors.white
                                                    : ColorConstant.gray500,
                                                fontSize: getFontSize(
                                                  8,
                                                ),
                                                fontFamily: 'Circular Std',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              width: getHorizontalSize(
                                                279.00,
                                              ),
                                              margin: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  24.00,
                                                ),
                                                top: getVerticalSize(
                                                  10.00,
                                                ),
                                                right: getHorizontalSize(
                                                  24.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  10.00,
                                                ),
                                              ),
                                              child: Text(
                                                "Creative UX Designer with 6+ years of experience in optimizing user experience through innovative solutions and dynamic interface designs. Successful in enhancing user engagement for well-known brands, providing a compelling user experience to improve brand loyalty and customer retention.  ",
                                                maxLines: null,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: isDark
                                                      ? Colors.white
                                                      : ColorConstant.gray500,
                                                  fontSize: getFontSize(
                                                    7,
                                                  ),
                                                  fontFamily: 'Circular Std',
                                                  fontWeight: FontWeight.w400,
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
                            Padding(
                              padding: EdgeInsets.only(
                                  left: getHorizontalSize(12),
                                  right: getHorizontalSize(12),
                                  top: getVerticalSize(30)),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        2.00,
                                      ),
                                      bottom: getVerticalSize(
                                        1.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Education",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        1.00,
                                      ),
                                      right: getHorizontalSize(
                                        2.00,
                                      ),
                                    ),
                                    child: Text(
                                      "See all",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: ColorConstant.gray400,
                                        fontSize: getFontSize(
                                          13,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
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
                                  11.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return Group541ItemWidget();
                                },
                              ),
                            ),
                          ],
                        ),
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
}
