import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class SetB4Screen extends StatelessWidget {
   static String id="SetB4Screen";
  @override
  Widget build(BuildContext context) {
    return Column(
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
                        ImageConstant.imgRectangle144,
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
                                ImageConstant.imgMaskgroup7,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(bottom: getVerticalSize(10)),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: RotationTransition(
                                turns: new AlwaysStoppedAnimation(-5 / 360),
                                child: Image.asset(
                                  ImageConstant.imgManwatchingpr2,
                                  height: getVerticalSize(
                                    401.28,
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
                "Browse the perfect jobs from the list",
                maxLines: null,
                textAlign: TextAlign.start,
                style: TextStyle(
                 
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
                "Our Best Job rankings include several industries, so you can find the best job for you in the all sector.",
                maxLines: null,
                textAlign: TextAlign.start,
                style: TextStyle(
                
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
