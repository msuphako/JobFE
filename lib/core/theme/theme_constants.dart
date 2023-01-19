import 'package:flutter/material.dart';

import '../utils/color_constant.dart';
import '../utils/math_utils.dart';

ThemeData lightTheme = ThemeData(
  dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(20))),
      backgroundColor: Colors.white),
  scaffoldBackgroundColor: ColorConstant.gray50,
  appBarTheme: AppBarTheme(
      backgroundColor: ColorConstant.gray50, foregroundColor: Colors.black),
  brightness: Brightness.light,
  backgroundColor: ColorConstant.gray50,
  inputDecorationTheme: InputDecorationTheme(
    alignLabelWithHint: true,
    hintStyle: TextStyle(
      fontSize: getFontSize(
        14.0,
      ),
      color: ColorConstant.gray500,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        getHorizontalSize(
          12.00,
        ),
      ),
      borderSide: BorderSide(
        color: ColorConstant.gray400,
        width: 1,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        getHorizontalSize(
          12.00,
        ),
      ),
      borderSide: BorderSide(
        color: ColorConstant.gray400,
        width: 1,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        getHorizontalSize(
          12.00,
        ),
      ),
      borderSide: BorderSide(
        color: ColorConstant.teal600,
        width: 1,
      ),
    ),
    filled: true,
    fillColor: ColorConstant.gray50,
    isDense: true,
    contentPadding: EdgeInsets.only(
      left: getHorizontalSize(
        14.00,
      ),
      right: getHorizontalSize(
        14.00,
      ),
      top: getVerticalSize(
        50.11,
      ),
      bottom: getVerticalSize(
        0.12,
      ),
    ),
  ),
);

Widget lightCostumContainer({
  required Widget child,
  EdgeInsetsGeometry padding = const EdgeInsets.symmetric(horizontal: 1),
}) {
  return Container(
      // padding: padding,

      // margin: EdgeInsets.only(
      //   top: getVerticalSize(
      //     8.00,
      //   ),
      //   bottom: getVerticalSize(
      //     8.00,
      //   ),
      // ),
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        // borderRadius: BorderRadius.circular(
        //   getHorizontalSize(
        //     20.00,
        //   ),
        // ),
        boxShadow: [
          BoxShadow(
            color: ColorConstant.black90008,
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
      child: child);
}

ThemeData darkTheme = ThemeData(
  dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(getHorizontalSize(20))),
      backgroundColor: ColorConstant.darkBg),
  scaffoldBackgroundColor: ColorConstant.darkBg,
  appBarTheme: AppBarTheme(
      backgroundColor: ColorConstant.darkBg, foregroundColor: Colors.white),
  brightness: Brightness.dark,
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(
      color: ColorConstant.whiteA700,
      fontSize: getFontSize(
        14,
      ),
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w400,
    ),
    filled: true,
    fillColor: ColorConstant.darkBg,
    contentPadding: EdgeInsets.only(
      left: getHorizontalSize(
        14.00,
      ),
      right: getHorizontalSize(
        14.00,
      ),
      top: getVerticalSize(
        50.11,
      ),
      bottom: getVerticalSize(
        0.12,
      ),
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        getHorizontalSize(
          16.00,
        ),
      ),
      borderSide: BorderSide(color: Colors.white),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: ColorConstant.teal600),
      borderRadius: BorderRadius.circular(
        getHorizontalSize(
          16.00,
        ),
      ),
    ),
  ),
  bottomSheetTheme: BottomSheetThemeData(
    backgroundColor: ColorConstant.darkContainer,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
      top: Radius.circular(20),
    )),
  ),
);

Widget darkCustomContainer(
    {required Widget child,
    EdgeInsetsGeometry padding = const EdgeInsets.symmetric(horizontal: 1)}) {
  return Container(
      padding: padding,
      margin: EdgeInsets.only(
        bottom: getVerticalSize(8),
      ),
      decoration: BoxDecoration(
        color: ColorConstant.darkbutton,
        // borderRadius: BorderRadius.circular(
        //   getHorizontalSize(
        //     20.00,
        //   ),
        // ),
      ),
      child: child);
}

// }


// Widget darkCustomButton({required String text , required double width,
//  required double height , }){
//   return Container(
//                     alignment: Alignment.center,
//                     height: height,
//                     width: width,
//                     decoration: BoxDecoration(
//                       color: ColorConstant.darkButton,
//                       borderRadius: BorderRadius.circular(
//                         getHorizontalSize(
//                           100.00,
//                         ),
//                       ),
//                     ),
//                     child:Text(
//                       text,
//                       textAlign: TextAlign.center,
//                       style: TextStyle(
//                                     color: ColorConstant.whiteA700,
//                                     fontSize: getFontSize(
//                                       15,
//                                     ),
//                                     fontFamily: 'Sofia Pro',
//                                     fontWeight: FontWeight.w600,
//                                     letterSpacing: 1.20,
//                                   ),
//                     ),
                 
                 
//                   );
                

// }