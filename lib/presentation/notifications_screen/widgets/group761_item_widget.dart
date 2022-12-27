import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';

// ignore: must_be_immutable
class Group761ItemWidget extends StatelessWidget {
  Group761ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          8.00,
        ),
        bottom: getVerticalSize(
          8.00,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: getSize(
              40.00,
            ),
            width: getSize(
              40.00,
            ),
            margin: EdgeInsets.only(
              top: getVerticalSize(
                2.00,
              ),
              bottom: getVerticalSize(
                27.00,
              ),
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray402,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  20.00,
                ),
              ),
            ),
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: ColorConstant.gray402,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    20.00,
                  ),
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      ImageConstant.imgImage99,
                      height: getSize(
                        40.00,
                      ),
                      width: getSize(
                        40.00,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                12.00,
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: getHorizontalSize(
                    275.00,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Fiverr',
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              15,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text:
                              'want to take a final interview of you where head of HR will see you!',
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              13,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      4.00,
                    ),
                    right: getHorizontalSize(
                      10.00,
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "12 min ago",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            13,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Container(
                        height: getSize(
                          8.00,
                        ),
                        width: getSize(
                          8.00,
                        ),
                        margin: EdgeInsets.only(
                          left: getHorizontalSize(
                            6.00,
                          ),
                          top: getVerticalSize(
                            6.50,
                          ),
                          bottom: getVerticalSize(
                            6.50,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.teal600,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              4.00,
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
        ],
      ),
    );
  }
}
