import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class SetB4GetStartedScreen extends StatelessWidget {
  static String id="SetB4GetStartedScreen";
  @override
  Widget build(BuildContext context) {
    return  Column(
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
                        ImageConstant.imgRectangle142,
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
                                  ImageConstant.imgMaskgroup2,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Image.asset(
                              ImageConstant.imgBusinessperson,
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
                        color: ColorConstant.gray900,
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
                        color: ColorConstant.gray900,
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
                  color: ColorConstant.gray9007e,
                  fontSize: getFontSize(
                    17,
                  ),
                  fontFamily: 'Circular Std',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        
       
        ],
      );
  
  }
}
