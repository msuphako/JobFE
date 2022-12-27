import 'package:easy_localization/easy_localization.dart';

import '../messages_screen/widgets/group743_item_widget.dart';
import '../messages_screen/widgets/group744_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import '../search_option_3_screen/search_option_3_screen.dart';

class MessagesScreen extends StatefulWidget {
  static String id="MessagesScreen";

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: Container(
           
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
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
                      color:isDark?ColorConstant.darkBg: ColorConstant.gray50,
                    ),
                    child: Align(
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
                              24.00,
                            ),
                            right: getHorizontalSize(
                              23.00,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  bottom: getVerticalSize(
                                    3.00,
                                  ),
                                ),
                                child: Text(
                                  "Messages",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Row(
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                       Navigator.pushNamed(context, SearchOption3Screen.id);
                                    },

                                    child: Container(
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgSearch114,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
left: context.locale==Constants.engLocal? getHorizontalSize(
                                              20.00,
                                            ):getHorizontalSize(0),
                                            right: context.locale==Constants.arLocal? getHorizontalSize(
                                              20.00,
                                            ):getHorizontalSize(0),
                                    ),
                                    child: Container(
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgEditsquare,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                  Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              16.00,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              40.00,
                            ),
                            width: getHorizontalSize(
                              327.00,
                            ),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hintText: 'Search a chat or message',
                                hintStyle: TextStyle(
                                  fontSize: getFontSize(
                                    15.0,
                                  ),
                                  color: ColorConstant.gray400,
                                ),
                                isDense: true,
                                contentPadding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    16.07,
                                  ),
                                  left: getHorizontalSize(12),
                                  right: getHorizontalSize(12)
                                 
                                ),
                              ),
                            
                              style: TextStyle(
                                color: ColorConstant.gray400,
                                fontSize: getFontSize(
                                  15.0,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                       
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                      
                        Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            24.00,
                          ),
                          top: getVerticalSize(
                            24.00,
                          ),
                          right: getHorizontalSize(
                            24.00,
                          ),
                        ),
                        child: Text(
                          "Companies",
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
                    ),
                    Padding(

                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          24.00,
                        ),
                        top: getVerticalSize(
                          8.00,
                        ),
                        right: getHorizontalSize(
                          24.00,
                        ),
                      ),
  
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 1,
                        itemBuilder: (context, index) {
                          return Group743ItemWidget();
                        },
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            24.00,
                          ),
                          top: getVerticalSize(
                            16.00,
                          ),
                          right: getHorizontalSize(
                            24.00,
                          ),
                        ),
                        child: Text(
                          "Individual Messages",
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
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          24.00,
                        ),
                        top: getVerticalSize(
                          8.00,
                        ),
                        right: getHorizontalSize(
                          24.00,
                        ),
                      ),
                      child: ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 4,
                        itemBuilder: (context, index) {
                          return Group744ItemWidget();
                        },
                      ),
                    ),
                                 
                      
                      ],
                    ),
                  ),
                ),
              
             
              ],
            ),
          ),
        ),
      ),
    );
  }
}
