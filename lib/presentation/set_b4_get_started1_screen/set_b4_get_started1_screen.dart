import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class SetB4GetStarted1Screen extends StatelessWidget {
  static String id="SetB4GetStarted1Screen";
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: getVerticalSize(
                        406.28,
                      ),
                      width: size.width,
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: getVerticalSize(
                                406.28,
                              ),
                              width: getHorizontalSize(
                                375.00,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgRectangle146,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              height: getVerticalSize(
                                443.28,
                              ),
                              width: size.width,
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        bottom: getVerticalSize(
                                          10.00,
                                        ),
                                      ),
                                      child: Container(
                                        height: getVerticalSize(
                                          401.28,
                                        ),
                                        width: getHorizontalSize(
                                          375.00,
                                        ),
                                        child: SvgPicture.asset(
                                          ImageConstant.imgMaskgroup9,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Image.asset(
                                      ImageConstant.imgBusinessperson2,
                                      height: getVerticalSize(
                                        443.28,
                                      ),
                                      width: getHorizontalSize(
                                        375.00,
                                      ),
                                      fit: BoxFit.fill,
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(
                        295.00,
                      ),
                      margin: EdgeInsets.only(
                        left: getHorizontalSize(
                          40.00,
                        ),
                        top: getVerticalSize(
                          8.00,
                        ),
                        right: getHorizontalSize(
                          40.00,
                        ),
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Make your dream career with jo',
                              style: TextStyle(
                                color: ColorConstant.bluegray101,
                                fontSize: getFontSize(
                                  34,
                                ),
                                fontFamily: 'Circular Std',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: 'b',
                              style: TextStyle(
                                color: ColorConstant.bluegray101,
                                fontSize: getFontSize(
                                  34,
                                ),
                                fontFamily: 'Circular Std',
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: getHorizontalSize(
                        295.00,
                      ),
                      margin: EdgeInsets.only(
                        left: getHorizontalSize(
                          40.00,
                        ),
                        top: getVerticalSize(
                          16.00,
                        ),
                        right: getHorizontalSize(
                          40.00,
                        ),
                      ),
                      child: Text(
                        "We help you find your dream job according to your skillset, location & preference to build your career.",
                        maxLines: null,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.bluegray1007e,
                          fontSize: getFontSize(
                            17,
                          ),
                          fontFamily: 'Circular Std',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        40.00,
                      ),
                      top: getVerticalSize(
                        64.00,
                      ),
                      right: getHorizontalSize(
                        40.00,
                      ),
                      bottom: getVerticalSize(
                        20.00,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: getVerticalSize(
                        56.00,
                      ),
                      width: getHorizontalSize(
                        295.00,
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
                        "Explore",
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
