import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class ResumePortfolioUploadingScreen extends StatelessWidget {
  static String id="ResumePortfolioUploadingScreen";
  @override

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.gray50,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(
                        top: getVerticalSize(
                          10.00,
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.gray50,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: size.width,
                              margin: EdgeInsets.only(
                                top: getVerticalSize(
                                  6.00,
                                ),
                                bottom: getVerticalSize(
                                  6.00,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    18.00,
                                  ),
                                  right: getHorizontalSize(
                                    24.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgAkariconschev11,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          1.00,
                                        ),
                                        bottom: getVerticalSize(
                                          2.00,
                                        ),
                                      ),
                                      child: Text(
                                        "Resume & Portfolio",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
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
                                        bottom: getVerticalSize(
                                          4.00,
                                        ),
                                      ),
                                      child: Text(
                                        "Skip",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: ColorConstant.teal600,
                                          fontSize: getFontSize(
                                            13,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
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
                        24.00,
                      ),
                      top: getVerticalSize(
                        32.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: Text(
                            "Resume or CV",
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
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(
                            top: getVerticalSize(
                              24.00,
                            ),
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                24.00,
                              ),
                            ),
                            border: Border.all(
                              color: ColorConstant.teal600,
                              width: getHorizontalSize(
                                2.00,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  211.00,
                                ),
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    58.00,
                                  ),
                                  top: getVerticalSize(
                                    40.00,
                                  ),
                                  right: getHorizontalSize(
                                    58.00,
                                  ),
                                ),
                                child: Text(
                                  "Upload your CV or Resume and use it when you apply for jobs",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.gray500,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                height: getSize(
                                  73.00,
                                ),
                                width: getSize(
                                  73.00,
                                ),
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    58.00,
                                  ),
                                  top: getVerticalSize(
                                    48.00,
                                  ),
                                  right: getHorizontalSize(
                                    58.00,
                                  ),
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: getSize(
                                          73.00,
                                        ),
                                        width: getSize(
                                          73.00,
                                        ),
                                        child: CircularProgressIndicator(
                                          value: 0.5,
                                          strokeWidth: getHorizontalSize(
                                            8.00,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            24.00,
                                          ),
                                          top: getVerticalSize(
                                            26.00,
                                          ),
                                          right: getHorizontalSize(
                                            23.00,
                                          ),
                                          bottom: getVerticalSize(
                                            26.00,
                                          ),
                                        ),
                                        child: Text(
                                          "37%",
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
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    58.00,
                                  ),
                                  top: getVerticalSize(
                                    48.00,
                                  ),
                                  right: getHorizontalSize(
                                    58.00,
                                  ),
                                  bottom: getVerticalSize(
                                    40.00,
                                  ),
                                ),
                                child: Text(
                                  "Uploading",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray900,
                                    fontSize: getFontSize(
                                      16,
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
                      left: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        48.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Portfolio ',
                                  style: TextStyle(
                                    color: ColorConstant.gray900,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                TextSpan(
                                  text: '(Optional)',
                                  style: TextStyle(
                                    color: ColorConstant.gray400,
                                    fontSize: getFontSize(
                                      16,
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
                              20.00,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      44.00,
                                    ),
                                    width: getHorizontalSize(
                                      156.00,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          16.00,
                                        ),
                                      ),
                                      border: Border.all(
                                        color: ColorConstant.gray900,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Portfolio Link",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: getHorizontalSize(
                                        1.00,
                                      ),
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: getVerticalSize(
                                        44.00,
                                      ),
                                      width: getHorizontalSize(
                                        155.00,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            16.00,
                                          ),
                                        ),
                                        border: Border.all(
                                          color: ColorConstant.gray900,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Add Slide",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorConstant.gray900,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    12.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: getVerticalSize(
                                        44.00,
                                      ),
                                      width: getHorizontalSize(
                                        156.00,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            16.00,
                                          ),
                                        ),
                                        border: Border.all(
                                          color: ColorConstant.gray900,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Add PDF",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorConstant.gray900,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: getVerticalSize(
                                        44.00,
                                      ),
                                      width: getHorizontalSize(
                                        155.00,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            16.00,
                                          ),
                                        ),
                                        border: Border.all(
                                          color: ColorConstant.gray900,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Add Photos ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorConstant.gray900,
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
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                      bottom: getVerticalSize(
                        20.00,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      height: getVerticalSize(
                        56.00,
                      ),
                      width: getHorizontalSize(
                        327.00,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.bluegray100,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            16.00,
                          ),
                        ),
                      ),
                      child: Text(
                        "Save",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
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
