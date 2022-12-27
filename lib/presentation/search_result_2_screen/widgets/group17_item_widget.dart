import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/core/theme/theme_constants.dart';

// ignore: must_be_immutable
class Group17ItemWidget extends StatelessWidget {
  Group17ItemWidget();

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.center,
        child:isDark?
         darkCustomContainer(
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
                child: Image.asset(
                  ImageConstant.imgImage44,
                  height: getSize(
                    40.00,
                  ),
                  width: getSize(
                    40.00,
                  ),
                  fit: BoxFit.fill,
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
                  "Ubuntu",
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
        ): lightCostumContainer(
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
                child: Image.asset(
                  ImageConstant.imgImage44,
                  height: getSize(
                    40.00,
                  ),
                  width: getSize(
                    40.00,
                  ),
                  fit: BoxFit.fill,
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
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.gray900,
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
                  "Ubuntu",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ColorConstant.gray90087,
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
                    color: ColorConstant.gray900,
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
    );
  }
}
