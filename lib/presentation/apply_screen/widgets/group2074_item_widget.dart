import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/core/theme/theme_constants.dart';

// ignore: must_be_immutable
class Group2074ItemWidget extends StatefulWidget {

  Group2074ItemWidget();

  @override
  State<Group2074ItemWidget> createState() => _Group2074ItemWidgetState();
}

class _Group2074ItemWidgetState extends State<Group2074ItemWidget> {
  bool checkBoxVal=false;

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return IntrinsicWidth(
      child: Container(
          margin: EdgeInsets.only(
            right: getHorizontalSize(
              17.00,
            ),
          ),

        child:isDark? darkCustomContainer(
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
                    19.00,
                  ),
                  bottom: getVerticalSize(
                    19.00,
                  ),
                ),
                child: Container(
                  height: getSize(
                    20.00,
                  ),
                  width: getSize(
                    20.00,
                  ),
                  child: Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                                            activeColor: ColorConstant.blueA200,
                                             side: BorderSide(
                                                color: ColorConstant.gray300,
                                                width: getHorizontalSize(
                                                  1.00,
                                                ),
                                              ),
                                            shape: RoundedRectangleBorder(
                                             
                                              borderRadius: BorderRadius.circular(
                                                getHorizontalSize(
                                              
                                                  20.00,
                                                ),
                                              ),
                                            ),
                                            materialTapTargetSize:
                                                MaterialTapTargetSize.shrinkWrap,
                                            value: checkBoxVal,
                                            onChanged: (value) {
                                              setState(() {
                                                checkBoxVal=!checkBoxVal;
                                              });
                                            },
                                          ),
                      ),
                  
               
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    20.00,
                  ),
                  top: getVerticalSize(
                    8.00,
                  ),
                  right: getHorizontalSize(
                    32.00,
                  ),
                  bottom: getVerticalSize(
                    8.00,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: getHorizontalSize(
                            2.00,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: getVerticalSize(
                            20.00,
                          ),
                          width: getHorizontalSize(
                            65.00,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.deepPurple500,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                6.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "UX Designer",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                8,
                              ),
                              fontFamily: 'Circular Std',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          8.00,
                        ),
                      ),
                      child: Text(
                        "Haley Jessica",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                         
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Circular Std',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
         
        ):lightCostumContainer(
        
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
                    19.00,
                  ),
                  bottom: getVerticalSize(
                    19.00,
                  ),
                ),
                child: Container(
                  height: getSize(
                    20.00,
                  ),
                  width: getSize(
                    20.00,
                  ),
                  child: Transform.scale(
                        scale: 1.3,
                        child: Checkbox(
                                            activeColor: ColorConstant.blueA200,
                                             side: BorderSide(
                                                color: ColorConstant.gray300,
                                                width: getHorizontalSize(
                                                  1.00,
                                                ),
                                              ),
                                            shape: RoundedRectangleBorder(
                                             
                                              borderRadius: BorderRadius.circular(
                                                getHorizontalSize(
                                              
                                                  20.00,
                                                ),
                                              ),
                                            ),
                                            materialTapTargetSize:
                                                MaterialTapTargetSize.shrinkWrap,
                                            value: checkBoxVal,
                                            onChanged: (value) {
                                              setState(() {
                                                checkBoxVal=!checkBoxVal;
                                              });
                                            },
                                          ),
                      ),
                  
               
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: getHorizontalSize(
                    20.00,
                  ),
                  top: getVerticalSize(
                    8.00,
                  ),
                  right: getHorizontalSize(
                    32.00,
                  ),
                  bottom: getVerticalSize(
                    8.00,
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: getHorizontalSize(
                            2.00,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          height: getVerticalSize(
                            20.00,
                          ),
                          width: getHorizontalSize(
                            65.00,
                          ),
                          decoration: BoxDecoration(
                            color: ColorConstant.deepPurple500,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                6.00,
                              ),
                            ),
                          ),
                          child: Text(
                            "UX Designer",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorConstant.whiteA700,
                              fontSize: getFontSize(
                                8,
                              ),
                              fontFamily: 'Circular Std',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          8.00,
                        ),
                      ),
                      child: Text(
                        "Haley Jessica",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            11,
                          ),
                          fontFamily: 'Circular Std',
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        
         ),
      ),
    );
  }
}
