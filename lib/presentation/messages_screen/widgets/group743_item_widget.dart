import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/messages_screen/chat_screen.dart';

// ignore: must_be_immutable
class Group743ItemWidget extends StatelessWidget {
  Group743ItemWidget();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: getVerticalSize(
          8.00,
        ),
        bottom: getVerticalSize(
          8.00,
        ),
      ),
      child: GestureDetector(
            onTap: () {
                Navigator.pushNamed(context, ChatScreen.id);
            },
            child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: getVerticalSize(
                12.00,
              ),
              bottom: getVerticalSize(
                12.00,
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
                ImageConstant.imgGoogle1,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: context.locale == Constants.engLocal
                  ? getHorizontalSize(
                      12.00,
                    )
                  : getHorizontalSize(0),
              right: context.locale == Constants.arLocal
                  ? getHorizontalSize(
                      12.00,
                    )
                  : getHorizontalSize(0),
              top: getVerticalSize(
                11.00,
              ),
              bottom: getVerticalSize(
                10.00,
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
                          fontSize: getFontSize(
                            15,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            3.00,
                          ),
                          bottom: getVerticalSize(
                            1.00,
                          ),
                        ),
                        child: Text(
                          "11:45 am",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: getFontSize(
                              11,
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
                  width: getHorizontalSize(
                    275.00,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Are you available for an intervi......",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            2.00,
                          ),
                          bottom: getVerticalSize(
                            3.00,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: getVerticalSize(
                            16.00,
                          ),
                          width: getHorizontalSize(
                            23.00,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.blueA200,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                198.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "4",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorConstant.gray50,
                              fontSize: getFontSize(
                                10,
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
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}
