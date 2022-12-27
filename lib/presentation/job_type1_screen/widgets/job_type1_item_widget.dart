import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/core/theme/theme_constants.dart';

// ignore: must_be_immutable
class JobType1ItemWidget extends StatefulWidget {

  JobType1ItemWidget();

  @override
  State<JobType1ItemWidget> createState() => _JobType1ItemWidgetState();
}

class _JobType1ItemWidgetState extends State<JobType1ItemWidget> {
  bool checkBoxVal=false;

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return GestureDetector(
      onTap: (){
        setState(() {
          checkBoxVal=!checkBoxVal;
        });
      },
      child:isDark? darkCustomContainer(
       
       
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(
                 
                  top: getVerticalSize(
                    14.00,
                  ),
                  bottom: getVerticalSize(
                    14.00,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          2.00,
                        ),
                        bottom: getVerticalSize(
                          2.00,
                        ),
                      ),
                      child: Image.asset(
                        ImageConstant.imgCurve16,
                        height: getSize(
                          20.00,
                        ),
                        width: getSize(
                          20.00,
                        ),
                        fit: BoxFit.fill,
                         color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                       left: context.locale==Constants.engLocal? getHorizontalSize(
                                              14.00,
                                            ):getHorizontalSize(0),
                                            right: context.locale==Constants.arLocal? getHorizontalSize(
                                              14.00,
                                            ):getHorizontalSize(0),
                      ),
                      child: Text(
                        "Full-Time",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                         
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               Container(
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
                 
            
            ],
          ),
        ),
      
      
      ):lightCostumContainer(child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(30)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsets.only(
                 
                  top: getVerticalSize(
                    14.00,
                  ),
                  bottom: getVerticalSize(
                    14.00,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          2.00,
                        ),
                        bottom: getVerticalSize(
                          2.00,
                        ),
                      ),
                      child: Image.asset(
                        ImageConstant.imgCurve16,
                        height: getSize(
                          20.00,
                        ),
                        width: getSize(
                          20.00,
                        ),
                        fit: BoxFit.fill,
                       
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
left: context.locale==Constants.engLocal? getHorizontalSize(
                                              14.00,
                                            ):getHorizontalSize(0),
                                            right: context.locale==Constants.arLocal? getHorizontalSize(
                                              14.00,
                                            ):getHorizontalSize(0),
                      ),
                      child: Text(
                        "Full-Time",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray900,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               Container(
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
                 
            
            ],
          ),
        ),
      ),
    );
  }
}
