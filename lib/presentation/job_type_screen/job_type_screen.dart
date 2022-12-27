import 'package:easy_localization/easy_localization.dart';
import 'package:hires/presentation/job_type1_screen/job_type1_screen.dart';
import '../job_type_screen/widgets/job_type_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class JobTypeScreen extends StatelessWidget {
  static String id="JobTypeScreen";
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
    
      body: Container(
        width: size.width,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Container(
             
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          16.00,
                        ),
                        bottom: getVerticalSize(
                          20.00,
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment:context.locale==Constants.engLocal? 
                            Alignment.centerLeft:Alignment.centerRight,
                            child: Container(
                              width: size.width,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    21.00,
                                  ),
                                  right: getHorizontalSize(
                                    20.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        bottom: getVerticalSize(
                                          16.00,
                                        ),
                                      ),
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.pop(context);
                                        },
                                        child: Container(
                                          height: getSize(
                                            24.00,
                                          ),
                                          width: getSize(
                                            24.00,
                                          ),
                                          child:isDark? SvgPicture.asset(
                                            ImageConstant.imgAkariconscros7,
                                            fit: BoxFit.fill,
                                            color: Colors.white,
                                          ):SvgPicture.asset(
                                            ImageConstant.imgAkariconscros7,
                                            fit: BoxFit.fill,
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
                                        "Hires",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorConstant.teal600,
                                          fontSize: getFontSize(
                                            21.55,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: getHorizontalSize(
                                327.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  40.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: Text(
                                "What type of job you’re looking for?",
                                maxLines: null,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  
                                  fontSize: getFontSize(
                                    24,
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
                                48.00,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 6,
                              itemBuilder: (context, index) {
                                return JobTypeItemWidget();
                              },
                            ),
                          ),
                        
                         
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                47.00,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, JobType1Screen.id);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: getVerticalSize(
                                  56.00,
                                ),
                                width: getHorizontalSize(
                                  327.00,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.teal600,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                ),
                                child: Text(
                                  "Save",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.whiteA700,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
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
          ),
        ),
      ),
    );
  }
}
