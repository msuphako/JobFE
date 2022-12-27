import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

// ignore: must_be_immutable
class CompaniesItemWidget extends StatelessWidget {
  CompaniesItemWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: getVerticalSize(
          28.00,
        ),
        bottom: getVerticalSize(
          28.00,
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
                    1.00,
                  ),
                  bottom: getVerticalSize(
                    2.00,
                  ),
                ),
                child: Text(
                  "Popular Now",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorConstant.gray900,
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
                    2.00,
                  ),
                  right: getHorizontalSize(
                    1.00,
                  ),
                ),
                child: Text(
                  "See all",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: ColorConstant.gray500,
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
          Padding(
            padding: EdgeInsets.only(
              top: getVerticalSize(
                20.00,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16.00,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstant.bluegray90005,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                            27.00,
                          ),
                          top: getVerticalSize(
                            16.00,
                          ),
                          right: getHorizontalSize(
                            27.00,
                          ),
                        ),
                        decoration: BoxDecoration(
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
                                alignment: Alignment.centerLeft,
                                child: Image.asset(
                                  ImageConstant.imgSpotigy1,
                                  height: getSize(
                                    44.00,
                                  ),
                                  width: getSize(
                                    44.00,
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
                            27.00,
                          ),
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            27.00,
                          ),
                          bottom: getVerticalSize(
                            14.00,
                          ),
                        ),
                        child: Text(
                          "Spotify",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              13,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16.00,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstant.bluegray90005,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                            26.00,
                          ),
                          top: getVerticalSize(
                            16.00,
                          ),
                          right: getHorizontalSize(
                            26.00,
                          ),
                        ),
                        decoration: BoxDecoration(
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
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: getSize(
                                    44.00,
                                  ),
                                  width: getSize(
                                    44.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgGoogle,
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
                            26.00,
                          ),
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            26.00,
                          ),
                          bottom: getVerticalSize(
                            14.00,
                          ),
                        ),
                        child: Text(
                          "Google",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              13,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16.00,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstant.bluegray90005,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            28.00,
                          ),
                          top: getVerticalSize(
                            16.00,
                          ),
                          right: getHorizontalSize(
                            27.00,
                          ),
                        ),
                        child: Image.asset(
                          ImageConstant.imgSpotify,
                          height: getSize(
                            44.00,
                          ),
                          width: getSize(
                            44.00,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            28.00,
                          ),
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            28.00,
                          ),
                          bottom: getVerticalSize(
                            14.00,
                          ),
                        ),
                        child: Text(
                          "Philips",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              13,
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
          Padding(
            padding: EdgeInsets.only(
              top: getVerticalSize(
                16.00,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16.00,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstant.bluegray90005,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                            18.00,
                          ),
                          top: getVerticalSize(
                            16.00,
                          ),
                          right: getHorizontalSize(
                            18.00,
                          ),
                        ),
                        decoration: BoxDecoration(
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
                                alignment: Alignment.centerLeft,
                                child: Container(
                                  height: getSize(
                                    44.00,
                                  ),
                                  width: getSize(
                                    44.00,
                                  ),
                                  child: SvgPicture.asset(
                                    ImageConstant.imgFb1,
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
                            18.00,
                          ),
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            18.00,
                          ),
                          bottom: getVerticalSize(
                            14.00,
                          ),
                        ),
                        child: Text(
                          "Facebook",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              13,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16.00,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstant.bluegray90005,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            28.00,
                          ),
                          top: getVerticalSize(
                            16.00,
                          ),
                          right: getHorizontalSize(
                            27.00,
                          ),
                        ),
                        child: Image.asset(
                          ImageConstant.imgSpotify1,
                          height: getSize(
                            44.00,
                          ),
                          width: getSize(
                            44.00,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            28.00,
                          ),
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            28.00,
                          ),
                          bottom: getVerticalSize(
                            14.00,
                          ),
                        ),
                        child: Text(
                          "HP",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              13,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        16.00,
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: ColorConstant.bluegray90005,
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
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            21.00,
                          ),
                          top: getVerticalSize(
                            16.00,
                          ),
                          right: getHorizontalSize(
                            21.00,
                          ),
                        ),
                        child: Image.asset(
                          ImageConstant.imgSpotify2,
                          height: getSize(
                            44.00,
                          ),
                          width: getSize(
                            44.00,
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            21.00,
                          ),
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            21.00,
                          ),
                          bottom: getVerticalSize(
                            14.00,
                          ),
                        ),
                        child: Text(
                          "Pinterest",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              13,
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
        ],
      ),
    );
  }
}
