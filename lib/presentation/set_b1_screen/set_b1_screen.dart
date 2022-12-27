import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/log_in_screen/log_in_screen.dart';
import 'package:hires/presentation/set_b1_screen/set_b1.dart';
import 'package:hires/presentation/set_b2_screen/set_b2_screen.dart';
import 'package:hires/presentation/set_b3_screen/set_b3_screen.dart';
import 'package:hires/presentation/set_b4_get_started_screen/set_b4_get_started_screen.dart';

class SetB1Screen extends StatefulWidget {
  static String id="SetB1Screen";

  @override
  State<SetB1Screen> createState() => _SetB1ScreenState();
}

class _SetB1ScreenState extends State<SetB1Screen> {
 int screenIndex=0;

   List<Widget> screens =[
    
     SetB1(),
     SetB2Screen(),
     SetB3Screen(),
     SetB4GetStartedScreen(),





   ];

  bool isLastIndex=false;
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
     
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
             
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: getVerticalSize(
                          20.00,
                        ),
                      ),
                      child: screens[screenIndex]
                   
                    ),
                  ),
                       
                       
                        isLastIndex?  Padding(
                      padding: EdgeInsets.only(
                        left: getHorizontalSize(
                          40.00,
                        ),
                        top: getVerticalSize(
                          64.00,
                        ),
                        right: getHorizontalSize(
                          40.00,
                        ),
                        bottom: getVerticalSize(
                          20.00,
                        ),
                      ),
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, LogInScreen.id);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: getVerticalSize(
                            56.00,
                          ),
                          width: getHorizontalSize(
                            295.00,
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
                            "Explore",
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
                    )
                 : Container(
                            height: getVerticalSize(
                              56.00,
                            ),
                            width: getHorizontalSize(
                              295.00,
                            ),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                40.00,
                              ),
                              top: getVerticalSize(
                                64.00,
                              ),
                              right: getHorizontalSize(
                                40.00,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: GestureDetector(
                                    onTap: (){
                                      Navigator.pushNamed(context, LogInScreen.id);
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          16.00,
                                        ),
                                        right: getHorizontalSize(
                                          10.00,
                                        ),
                                        bottom: getVerticalSize(
                                          16.00,
                                        ),
                                      ),
                                      child: Text(
                                        "Skip",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          color: ColorConstant.gray90087,
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
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                       setState(() {
                                         screenIndex++;
                                         if(screenIndex==3)
                                         isLastIndex=true;
                                       });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: getVerticalSize(
                                          56.00,
                                        ),
                                        width: getHorizontalSize(
                                          156.00,
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
                                          "Next",
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
                                ),
                              ],
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
