import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

// ignore: must_be_immutable
class Group628ItemWidget extends StatelessWidget {
  Group628ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          top: getVerticalSize(
            24.50,
          ),
          bottom: getVerticalSize(
            24.50,
          ),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              "Experience Level",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: ColorConstant.gray500,
                fontSize: getFontSize(
                  15,
                ),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  24.00,
                ),
                top: getVerticalSize(
                  2.00,
                ),
              ),
              child: Text(
                "Entry Level, Mid Le....",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.start,
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
              height: getSize(
                20.00,
              ),
              width: getSize(
                20.00,
              ),
              margin: EdgeInsets.only(
                left: getHorizontalSize(
                  20.00,
                ),
                top: getVerticalSize(
                  2.00,
                ),
                bottom: getVerticalSize(
                  1.00,
                ),
              ),
              decoration: BoxDecoration(
                color: ColorConstant.blue50,
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    10.00,
                  ),
                ),
              ),
              child: Card(
                clipBehavior: Clip.antiAlias,
                elevation: 0,
                margin: EdgeInsets.all(0),
                color: ColorConstant.blue50,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    getHorizontalSize(
                      10.00,
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
                            4.00,
                          ),
                          top: getVerticalSize(
                            4.00,
                          ),
                          right: getHorizontalSize(
                            4.00,
                          ),
                          bottom: getVerticalSize(
                            4.00,
                          ),
                        ),
                        child: Container(
                          height: getSize(
                            12.00,
                          ),
                          width: getSize(
                            12.00,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgHeroiconssolid,
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
    
    
    );
  }
}
