import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class JobDetailsScreen extends StatelessWidget {
  static String id="JobDetailsScreen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(),
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
                          37.21,
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
                            height: getVerticalSize(
                              281.92,
                            ),
                            width: size.width,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: getVerticalSize(
                                      281.92,
                                    ),
                                    width: size.width,
                                    child: Stack(
                                      alignment: Alignment.centerLeft,
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: getVerticalSize(
                                              281.92,
                                            ),
                                            width: getHorizontalSize(
                                              375.00,
                                            ),
                                            child: SvgPicture.asset(
                                              ImageConstant.jobBg,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: getVerticalSize(
                                              281.92,
                                            ),
                                            width: getHorizontalSize(
                                              375.00,
                                            ),
                                            child: SvgPicture.asset(
                                              ImageConstant.imgMaskgroup5,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                     
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        18.00,
                                      ),
                                      top: getVerticalSize(
                                        15.92,
                                      ),
                                      right: getHorizontalSize(
                                        18.00,
                                      ),
                                      bottom: getVerticalSize(
                                        15.92,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: size.width,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  bottom: getVerticalSize(
                                                    56.00,
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
                                                    ImageConstant
                                                        .imgAkariconschev19,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: getSize(
                                                  80.00,
                                                ),
                                                width: getSize(
                                                  80.00,
                                                ),
                                                child: SvgPicture.asset(
                                                  ImageConstant.imgGroup24,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    0.50,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    56.50,
                                                  ),
                                                ),
                                                child: Container(
                                                  height: getSize(
                                                    23.00,
                                                  ),
                                                  width: getSize(
                                                    23.00,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant
                                                        .imgFluentbookmark1,
                                                    fit: BoxFit.fill,
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
                                                89.00,
                                              ),
                                              top: getVerticalSize(
                                                12.00,
                                              ),
                                              right: getHorizontalSize(
                                                83.00,
                                              ),
                                            ),
                                            child: Text(
                                              "Product Designer",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.bluegray101,
                                                fontSize: getFontSize(
                                                  20,
                                                ),
                                                fontFamily: 'Circular Std',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                89.00,
                                              ),
                                              top: getVerticalSize(
                                                4.00,
                                              ),
                                              right: getHorizontalSize(
                                                89.00,
                                              ),
                                            ),
                                            child: Text(
                                              "Google",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.bluegray1009e,
                                                fontSize: getFontSize(
                                                  15,
                                                ),
                                                fontFamily: 'Circular Std',
                                                fontWeight: FontWeight.w500,
                                              ),
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(
                                                  26.00,
                                                ),
                                                width: getHorizontalSize(
                                                  69.00,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA70026,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      164.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Design",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .bluegray101,
                                                    fontSize: getFontSize(
                                                      11,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(
                                                  26.00,
                                                ),
                                                width: getHorizontalSize(
                                                  82.00,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA70026,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      164.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Full-Time",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .bluegray101,
                                                    fontSize: getFontSize(
                                                      11,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.center,
                                                height: getVerticalSize(
                                                  26.00,
                                                ),
                                                width: getHorizontalSize(
                                                  66.00,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA70026,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      164.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Text(
                                                  "Junior",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .bluegray101,
                                                    fontSize: getFontSize(
                                                      11,
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
                                            top: getVerticalSize(
                                              24.00,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    30.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  "160,00/year",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .bluegray101,
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
                                                  right: getHorizontalSize(
                                                    25.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  "California, USA",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .bluegray101,
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
                                      ],
                                    ),
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
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Description",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray400,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Requirement",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.bluegray101,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "About",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray400,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "Reviews",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray400,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              327.00,
                            ),
                            margin: EdgeInsets.only(
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
                              "Master's degree in Design, Computer Science, Computer Interaction, or a related field.\n3 years of relevant industry experience.\nAbility to lead and ideate products from scratch and improve features, all with a user-centered design process.\nSkills in communicating and influencing product design strategy.\nExcellent problem-solving skills and familiarity with technical constraints and limitations.\nExperience designing across multiple platform.\nPortfolio highlighting multiple projects.",
                              maxLines: null,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.gray500,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
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
                                  13.00,
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
                                  "Apply Now",
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
