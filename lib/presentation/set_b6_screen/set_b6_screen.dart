import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class SetB6Screen extends StatelessWidget {
  static String id="SetB6Screen";
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
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: getVerticalSize(
                          20.00,
                        ),
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
                                alignment: Alignment.centerLeft,
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
                                        ImageConstant.imgRectangle147,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: getVerticalSize(
                                        401.28,
                                      ),
                                      width: size.width,
                                      margin: EdgeInsets.only(
                                        bottom: getVerticalSize(
                                          5.00,
                                        ),
                                      ),
                                      child: Stack(
                                        alignment: Alignment.centerLeft,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              height: getVerticalSize(
                                                401.28,
                                              ),
                                              width: getHorizontalSize(
                                                375.00,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgGroup6,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                bottom: getVerticalSize(
                                                  3.00,
                                                ),
                                              ),
                                              child: Image.asset(
                                                ImageConstant.imgMaleholdingma1,
                                                height: getVerticalSize(
                                                  398.28,
                                                ),
                                                width: getHorizontalSize(
                                                  375.00,
                                                ),
                                                fit: BoxFit.fill,
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
                              child: Text(
                                "Search your dream job fast and ease",
                                maxLines: null,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.bluegray101,
                                  fontSize: getFontSize(
                                    34,
                                  ),
                                  fontFamily: 'Circular Std',
                                  fontWeight: FontWeight.w700,
                                ),
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
                                "Figure out your top five priorities -- whether it is company culture, salary\nor a specific job position. ",
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
                          Container(
                            height: getVerticalSize(
                              56.00,
                            ),
                            width: getHorizontalSize(
                              295.00,
                            ),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                40.00,
                              ),
                              top: getVerticalSize(
                                64.00,
                              ),
                              right: getHorizontalSize(
                                40.00,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        16.00,
                                      ),
                                      right: getHorizontalSize(
                                        10.00,
                                      ),
                                      bottom: getVerticalSize(
                                        16.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Skip",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.bluegray10087,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: getVerticalSize(
                                        56.00,
                                      ),
                                      width: getHorizontalSize(
                                        156.00,
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
                                        "Next",
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
