import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class SetB3Screen extends StatelessWidget {
  static String id="SetB3Screen";
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
                        ImageConstant.imgRectangle141,
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
                                ImageConstant.imgMaskgroup1,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                bottom: getVerticalSize(
                                  10.00,
                                ),
                              ),
                              child: RotationTransition(
                                turns: new AlwaysStoppedAnimation(5 / 360),
                                child: Image.asset(
                                  ImageConstant.imgPersonholding,
                                  height: getVerticalSize(
                                    393.28,
                                  ),
                                  width: getHorizontalSize(
                                    375.00,
                                  ),
                                  fit: BoxFit.fill,
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
                "Apply to fitted jobs \n& get invitations",
                maxLines: null,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: ColorConstant.gray900,
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
                "You will ask to attend interviews to various companies and get your job proposals after that process. ",
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
