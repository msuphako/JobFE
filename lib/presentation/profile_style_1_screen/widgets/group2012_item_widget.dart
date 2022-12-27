import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';

// ignore: must_be_immutable
class Group2012ItemWidget extends StatelessWidget {
  Group2012ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  "Experience",
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
          Container(
            margin: EdgeInsets.only(
              top: getVerticalSize(
                11.00,
              ),
            ),
            decoration: BoxDecoration(
              color: ColorConstant.whiteA700,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  20.00,
                ),
              ),
              boxShadow: [
                BoxShadow(
                  color: ColorConstant.black90005,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  height: getVerticalSize(
                    44.00,
                  ),
                  width: getHorizontalSize(
                    43.00,
                  ),
                  margin: EdgeInsets.only(
                    left: getHorizontalSize(
                      24.00,
                    ),
                    top: getVerticalSize(
                      15.00,
                    ),
                    bottom: getVerticalSize(
                      15.00,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: getSize(
                            43.00,
                          ),
                          width: getSize(
                            43.00,
                          ),
                          margin: EdgeInsets.only(
                            top: getVerticalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            bottom: getVerticalSize(
                              1.00,
                            ),
                          ),
                          child: Image.asset(
                            ImageConstant.imgImage49,
                            height: getSize(
                              43.00,
                            ),
                            width: getSize(
                              43.00,
                            ),
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
                      16.00,
                    ),
                    top: getVerticalSize(
                      16.00,
                    ),
                    right: getHorizontalSize(
                      24.00,
                    ),
                    bottom: getVerticalSize(
                      15.00,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          220.00,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                bottom: getVerticalSize(
                                  1.00,
                                ),
                              ),
                              child: Text(
                                "UX Intern",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                 
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              "San Jose, US",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: ColorConstant.gray900,
                                fontSize: getFontSize(
                                  12,
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
                          220.00,
                        ),
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            3.00,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Spotify",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color: ColorConstant.gray90087,
                                fontSize: getFontSize(
                                  13,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Text(
                              "Dec 20 - Feb 21",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: ColorConstant.gray90087,
                                fontSize: getFontSize(
                                  13,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
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
    );
  }
}
