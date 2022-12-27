import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/core/theme/theme_constants.dart';

// ignore: must_be_immutable
class ApplicationsItemWidget extends StatelessWidget {
  ApplicationsItemWidget();

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Align(
        alignment: Alignment.center,
        child:isDark? darkCustomContainer(


          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    20.00,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: getSize(
                        44.00,
                      ),
                      width: getSize(
                        44.00,
                      ),
                      margin: EdgeInsets.only(
                        left: getHorizontalSize(
                          24.00,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            119.00,
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
                              119.00,
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: getSize(
                                  44.00,
                                ),
                                width: getSize(
                                  44.00,
                                ),
                                child: SvgPicture.asset(
                                  ImageConstant.imgGoogle13,
                                  fit: BoxFit.fill,
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
                          15.00,
                        ),
                        right: getHorizontalSize(
                          24.00,
                        ),
                        bottom: getVerticalSize(
                          1.00,
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
                                    "Jr Executive",
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
                                  "${Constants.currency }115,000/y",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(

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
                                  "Google",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color:isDark?Colors.white: ColorConstant.gray90087,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "Los Angels, US",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                    color:isDark? Colors.white: ColorConstant.gray90087,
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
              Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    23.00,
                  ),
                  bottom: getVerticalSize(
                    20.00,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          24.00,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: getVerticalSize(
                          33.00,
                        ),
                        width: getHorizontalSize(
                          114.00,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.red50,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              52.00,
                            ),
                          ),
                        ),
                        child: Text(
                          "Cancelled",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.red700,
                            fontSize: getFontSize(
                              13,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          7.00,
                        ),
                        right: getHorizontalSize(
                          24.00,
                        ),
                        bottom: getVerticalSize(
                          7.00,
                        ),
                      ),
                      child: Text(
                        "Full-Time",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: TextStyle(

                          fontSize: getFontSize(
                            12,
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

        ):lightCostumContainer(child:
         Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    20.00,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      height: getSize(
                        44.00,
                      ),
                      width: getSize(
                        44.00,
                      ),
                      margin: EdgeInsets.only(
                        left: getHorizontalSize(
                          24.00,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            119.00,
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
                              119.00,
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: getSize(
                                  44.00,
                                ),
                                width: getSize(
                                  44.00,
                                ),
                                child: SvgPicture.asset(
                                  ImageConstant.imgGoogle13,
                                  fit: BoxFit.fill,
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
                          15.00,
                        ),
                        right: getHorizontalSize(
                          24.00,
                        ),
                        bottom: getVerticalSize(
                          1.00,
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
                                    "Jr Executive",
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
                                  "${Constants.currency }115,000/y",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.right,
                                  style: TextStyle(

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
                                  "Google",
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
                                  "Los Angels, US",
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
              Padding(
                padding: EdgeInsets.only(
                  top: getVerticalSize(
                    23.00,
                  ),
                  bottom: getVerticalSize(
                    20.00,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          24.00,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.center,
                        height: getVerticalSize(
                          33.00,
                        ),
                        width: getHorizontalSize(
                          114.00,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.red50,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              52.00,
                            ),
                          ),
                        ),
                        child: Text(
                          "Cancelled",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.red700,
                            fontSize: getFontSize(
                              13,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          7.00,
                        ),
                        right: getHorizontalSize(
                          24.00,
                        ),
                        bottom: getVerticalSize(
                          7.00,
                        ),
                      ),
                      child: Text(
                        "Full-Time",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.right,
                        style: TextStyle(

                          fontSize: getFontSize(
                            12,
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

         ),
      ),
    );
  }
}
