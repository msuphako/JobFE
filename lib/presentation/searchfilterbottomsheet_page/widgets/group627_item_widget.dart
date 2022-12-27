import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

// ignore: must_be_immutable
class Group627ItemWidget extends StatefulWidget {
  Group627ItemWidget();

  @override
  State<Group627ItemWidget> createState() => _Group627ItemWidgetState();
}

class _Group627ItemWidgetState extends State<Group627ItemWidget> {
  List<String> list=[
    "Google", "Meta", "Amazon","Netflix"
  ];
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(
          top: getVerticalSize(
            8.00,
          ),
          right: getHorizontalSize(
            4.00,
          ),
          bottom: getVerticalSize(
            8.00,
          ),
        ),
        child: Container(
                  margin: EdgeInsets.only(
                    left: getHorizontalSize(
                      16.00,
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.blue50,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        97.00,
                      ),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            16.00,
                          ),
                          top: getVerticalSize(
                            8.00,
                          ),
                          bottom: getVerticalSize(
                            8.00,
                          ),
                        ),
                        child: Text(
                         "",
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
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            8.00,
                          ),
                          top: getVerticalSize(
                            15.00,
                          ),
                          right: getHorizontalSize(
                            16.00,
                          ),
                          bottom: getVerticalSize(
                            15.00,
                          ),
                        ),
                        child: Container(
                          height: getSize(
                            7.00,
                          ),
                          width: getSize(
                            7.00,
                          ),
                          child: SvgPicture.asset(
                            ImageConstant.imgVector9,
                            fit: BoxFit.fill,
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
