import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';

class SetB1 extends StatelessWidget {
  const SetB1({ Key? key }) : super(key: key);

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
                                      ImageConstant.imgRectangle143,
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
                                              ImageConstant.imgGroup,
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
                                                ImageConstant.imgMaleholdingma,
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
                              "Figure out your top five priorities -- whether it is company culture, salary\nor a specific job position. ",
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
                    )  ;
  }
}