import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';

// ignore: must_be_immutable
class Group541ItemWidget extends StatelessWidget {
  Group541ItemWidget();

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
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: getSize(
              98.00,
            ),
            width: getSize(
              98.00,
            ),
            decoration: BoxDecoration(
              color: ColorConstant.gray402,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
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
                    8.00,
                  ),
                ),
              ),
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      ImageConstant.imgImage12,
                      height: getSize(
                        98.00,
                      ),
                      width: getSize(
                        98.00,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      ImageConstant.imgImage18,
                      height: getSize(
                        98.00,
                      ),
                      width: getSize(
                        98.00,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: getVerticalSize(
              98.00,
            ),
            width: getHorizontalSize(
              98.13,
            ),
            margin: EdgeInsets.only(
              left: getHorizontalSize(
                16.00,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getSize(
                      98.00,
                    ),
                    width: getSize(
                      98.00,
                    ),
                    margin: EdgeInsets.only(
                      right: getHorizontalSize(
                        0.13,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray402,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        0.13,
                      ),
                    ),
                    child: Image.asset(
                      ImageConstant.imgImage13,
                      height: getSize(
                        98.00,
                      ),
                      width: getSize(
                        98.00,
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: getVerticalSize(
              98.00,
            ),
            width: getHorizontalSize(
              98.26,
            ),
            margin: EdgeInsets.only(
              left: getHorizontalSize(
                15.87,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: getSize(
                      98.00,
                    ),
                    width: getSize(
                      98.00,
                    ),
                    margin: EdgeInsets.only(
                      right: getHorizontalSize(
                        0.26,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray402,
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(
                          8.00,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        0.26,
                      ),
                    ),
                    child: Image.asset(
                      ImageConstant.imgImage14,
                      height: getSize(
                        98.00,
                      ),
                      width: getSize(
                        98.00,
                      ),
                      fit: BoxFit.fill,
                    ),
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
