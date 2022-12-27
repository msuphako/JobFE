import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/presentation/solo_category_job_listing_screen/solo_category_job_listing_screen.dart';

// ignore: must_be_immutable
class Group603ItemWidget extends StatelessWidget {
  Group603ItemWidget();

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          top: getVerticalSize(
            7.50,
          ),
          bottom: getVerticalSize(
            7.50,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
           Padding(
             padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(24)),
             child: GestureDetector(
               onTap:(){
                 Navigator.pushNamed(context, SoloCategoryJobListingScreen.id);
               },
               child: isDark? darkCustomContainer(
                 
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            36.00,
                          ),
                          top: getVerticalSize(
                            21.00,
                          ),
                          right: getHorizontalSize(
                            36.00,
                          ),
                        ),
                        child: Container(
                          height: getSize(
                            40.00,
                          ),
                          width: getSize(
                            40.00,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgLogosdribbble,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            36.00,
                          ),
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            35.00,
                          ),
                        ),
                        child: Text(
                          "UX Designer",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            36.00,
                          ),
                          top: getVerticalSize(
                            4.00,
                          ),
                          right: getHorizontalSize(
                            36.00,
                          ),
                        ),
                        child: Text(
                          "Dribbble",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:isDark?Colors.white: ColorConstant.gray90087,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            36.00,
                          ),
                          top: getVerticalSize(
                            8.00,
                          ),
                          right: getHorizontalSize(
                            36.00,
                          ),
                          bottom: getVerticalSize(
                            23.00,
                          ),
                        ),
                        child: Text(
                          "${Constants.currency }80,000/y",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
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
                ):lightCostumContainer(
                 
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            36.00,
                          ),
                          top: getVerticalSize(
                            21.00,
                          ),
                          right: getHorizontalSize(
                            36.00,
                          ),
                        ),
                        child: Container(
                          height: getSize(
                            40.00,
                          ),
                          width: getSize(
                            40.00,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgLogosdribbble,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            36.00,
                          ),
                          top: getVerticalSize(
                            12.00,
                          ),
                          right: getHorizontalSize(
                            35.00,
                          ),
                        ),
                        child: Text(
                          "UX Designer",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            36.00,
                          ),
                          top: getVerticalSize(
                            4.00,
                          ),
                          right: getHorizontalSize(
                            36.00,
                          ),
                        ),
                        child: Text(
                          "Dribbble",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color:isDark?Colors.white: ColorConstant.gray90087,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            36.00,
                          ),
                          top: getVerticalSize(
                            8.00,
                          ),
                          right: getHorizontalSize(
                            36.00,
                          ),
                          bottom: getVerticalSize(
                            23.00,
                          ),
                        ),
                        child: Text(
                          "${Constants.currency }80,000/y",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
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
             ),
           ),
            GestureDetector(
                 onTap:(){
                 Navigator.pushNamed(context, SoloCategoryJobListingScreen.id);
               },
              child: isDark? darkCustomContainer(
                       
               child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          27.00,
                        ),
                        top: getVerticalSize(
                          21.00,
                        ),
                        right: getHorizontalSize(
                          27.00,
                        ),
                      ),
                      child: Container(
                        height: getVerticalSize(
                          39.76,
                        ),
                        width: getHorizontalSize(
                          40.00,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgVector7,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          27.00,
                        ),
                        top: getVerticalSize(
                          12.24,
                        ),
                        right: getHorizontalSize(
                          26.00,
                        ),
                      ),
                      child: Text(
                        "UX Designer L3",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                         
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          27.00,
                        ),
                        top: getVerticalSize(
                          4.00,
                        ),
                        right: getHorizontalSize(
                          27.00,
                        ),
                      ),
                      child: Text(
                        "Facebook",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color:isDark?Colors.white: ColorConstant.gray90087,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          27.00,
                        ),
                        top: getVerticalSize(
                          8.00,
                        ),
                        right: getHorizontalSize(
                          27.00,
                        ),
                        bottom: getVerticalSize(
                          23.00,
                        ),
                      ),
                      child: Text(
                        "${Constants.currency }96,000/y",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color:isDark?Colors.white:ColorConstant.gray900,
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
              ):lightCostumContainer(
                       
               child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          27.00,
                        ),
                        top: getVerticalSize(
                          21.00,
                        ),
                        right: getHorizontalSize(
                          27.00,
                        ),
                      ),
                      child: Container(
                        height: getVerticalSize(
                          39.76,
                        ),
                        width: getHorizontalSize(
                          40.00,
                        ),
                        child: SvgPicture.asset(
                          ImageConstant.imgVector7,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          27.00,
                        ),
                        top: getVerticalSize(
                          12.24,
                        ),
                        right: getHorizontalSize(
                          26.00,
                        ),
                      ),
                      child: Text(
                        "UX Designer L3",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                         
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          27.00,
                        ),
                        top: getVerticalSize(
                          4.00,
                        ),
                        right: getHorizontalSize(
                          27.00,
                        ),
                      ),
                      child: Text(
                        "Facebook",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color:isDark?Colors.white: ColorConstant.gray90087,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          27.00,
                        ),
                        top: getVerticalSize(
                          8.00,
                        ),
                        right: getHorizontalSize(
                          27.00,
                        ),
                        bottom: getVerticalSize(
                          23.00,
                        ),
                      ),
                      child: Text(
                        "${Constants.currency }96,000/y",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color:isDark?Colors.white:ColorConstant.gray900,
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
            ),
          ],
        ),
      ),
    );
  }
}
