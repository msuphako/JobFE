import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

// ignore: must_be_immutable
class Group59ItemWidget extends StatelessWidget {
  Group59ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
      height: getVerticalSize(200),
       
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: getVerticalSize(
                  200.00,
                ),
                width: getHorizontalSize(450),
               
                child: SvgPicture.asset(
                  ImageConstant.imgGroup84,
                  fit: BoxFit.fitWidth,

                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    40.00,
                  ),
                  top: getVerticalSize(
                    12.00,
                  ),
                  right: getHorizontalSize(
                    40.00,
                  ),
                  bottom: getVerticalSize(
                    30.00,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              height: getSize(
                                46.00,
                              ),
                              width: getSize(
                                46.00,
                              ),
                              margin: EdgeInsets.only(
                                bottom: getVerticalSize(
                                  1.00,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.whiteA700,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    12.00,
                                  ),
                                ),
                              ),
                              child: Card(
                                clipBehavior: Clip.antiAlias,
                                elevation: 0,
                                margin: EdgeInsets.all(0),
                                color: ColorConstant.whiteA700,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12.00,
                                    ),
                                  ),
                                ),
                                child: Stack(
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            12.88,
                                          ),
                                          top: getVerticalSize(
                                            12.00,
                                          ),
                                          right: getHorizontalSize(
                                            13.86,
                                          ),
                                          bottom: getVerticalSize(
                                            12.00,
                                          ),
                                        ),
                                        child: Container(
                                          height: getVerticalSize(
                                            22.00,
                                          ),
                                          width: getHorizontalSize(
                                            19.26,
                                          ),
                                          child: SvgPicture.asset(
                                            ImageConstant.imgGroup5,
                                            fit: BoxFit.fill,
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
                                  16.00,
                                ),
                                top: getVerticalSize(
                                  2.00,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Junior Executive",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        16,
                                      ),
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        3.00,
                                      ),
                                      right: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Shell plc",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        color: ColorConstant.whiteA7009e,
                                        fontSize: getFontSize(
                                          14,
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
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              3.00,
                            ),
                            right: getHorizontalSize(
                              3.00,
                            ),
                            bottom: getVerticalSize(
                              24.00,
                            ),
                          ),
                          child: Container(
                            height: getSize(
                              20.00,
                            ),
                            width: getSize(
                              20.00,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgFluentbookmark,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          15.00,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: getVerticalSize(
                              26.00,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(16)
                            ),
                           
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA70026,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  65.00,
                                ),
                              ),
                            ),
                            child: Text(
                              "Administration",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
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
                            padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(16)
                            ),
                           
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA70026,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  65.00,
                                ),
                              ),
                            ),
                            child: Text(
                              "Full-Time",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
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
                            padding: EdgeInsets.symmetric(
                              horizontal: getHorizontalSize(16)
                            ),
                           
                            decoration: BoxDecoration(
                              color: ColorConstant.whiteA70026,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  65.00,
                                ),
                              ),
                            ),
                            child: Text(
                              "Junior",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
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
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            14.00,
                          ),
                          right: getHorizontalSize(
                            4.00,
                          ),
                          bottom: getVerticalSize(10)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "${Constants.currency }98,00/year",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
                                fontSize: getFontSize(
                                  13,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "Texas, USA",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.whiteA700,
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  
  
  }
}
