import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/application_tracking_screen/application_tracking_screen.dart';
import 'package:hires/presentation/home_screen/home_screen.dart';

class ApplySuccess2Screen extends StatelessWidget {
  static String id="ApplySuccess2Screen";
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
        appBar: AppBar(
           backgroundColor: isDark?ColorConstant.darkbutton:ColorConstant.whiteA700,
        title: Text(
                                              "Confirmation",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),

            centerTitle: true,
         elevation: 0,
         leading:  Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  18.00,
                                ),
                                right: getHorizontalSize(
                                  18.00,
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
                                  child: Icon(Icons.arrow_back_ios,size: getSize(20),
                                  color: 
                                  isDark?Colors.white:Colors.black
                                  )
                                ),
                              ),
                            
                            
                            ),
                          ),
                         
      
      ),
     
     
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
             
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                   
                     width: double.infinity,
                     decoration: BoxDecoration(
                        color: isDark?ColorConstant.darkbutton:Colors.white,
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
                 
                     
                      
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                30.00,
                              ),
                              bottom: getVerticalSize(
                                20.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  height: getSize(
                                    44.00,
                                  ),
                                  width: getSize(
                                    44.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      44.00,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.whiteA700,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        119.00,
                                      ),
                                    ),
                                  ),
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.whiteA700,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          119.00,
                                        ),
                                      ),
                                    ),
                                    child: Stack(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Image.asset(
                                            ImageConstant.imgSpotigy12,
                                            height: getSize(
                                              44.00,
                                            ),
                                            width: getSize(
                                              44.00,
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      15.00,
                                    ),
                                    right: getHorizontalSize(
                                      52.00,
                                    ),
                                    bottom: getVerticalSize(
                                      1.00,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(
                                          220.00,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                bottom: getVerticalSize(
                                                  1.00,
                                                ),
                                              ),
                                              child: Text(
                                                "Product Designer",
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
                                            Text(
                                              "${Constants.currency }88,000/y",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                               
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: getHorizontalSize(
                                          220.00,
                                        ),
                                        margin: EdgeInsets.only(
                                          top: getVerticalSize(
                                            3.00,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              "Spotify",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color:isDark?Colors.white: ColorConstant.gray90087,
                                                fontSize: getFontSize(
                                                  13,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            Text(
                                              "Los Angels, US",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                color:isDark?Colors.white:ColorConstant.gray90087,
                                                fontSize: getFontSize(
                                                  13,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w400,
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
                        ],
                      ),
                   
                  
                  ),
                
                
                
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        16.00,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color:isDark?ColorConstant.darkbutton: ColorConstant.whiteA700,
                      boxShadow: [
                        BoxShadow(
                          color: ColorConstant.black90005,
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: getSize(
                            180.00,
                          ),
                          width: getSize(
                            180.00,
                          ),
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              20.00,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  height: getSize(
                                    162.00,
                                  ),
                                  width: getSize(
                                    162.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      9.00,
                                    ),
                                    top: getVerticalSize(
                                      9.00,
                                    ),
                                    right: getHorizontalSize(
                                      9.00,
                                    ),
                                    bottom: getVerticalSize(
                                      9.00,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray51,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        81.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Image.asset(
                                  ImageConstant.imgSuccessfullydo2,
                                  height: getSize(
                                    180.00,
                                  ),
                                  width: getSize(
                                    180.00,
                                  ),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
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
                            "Successful",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            295.00,
                          ),
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              12.00,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: Text(
                            "You’ve successfully applied to Spotify ux intern role. You can see the job status from Application Tracking",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              50.00,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, ApplicationTrackingScreen.id);
                             
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
                                "Track Job",
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
                        Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              20.00,
                            ),
                            right: getHorizontalSize(
                              24.00,
                            ),
                            bottom: getVerticalSize(
                              20.00,
                            ),
                          ),
                          child: GestureDetector(
                            onTap: (){
                              Navigator.pushNamedAndRemoveUntil(context, 
                              HomeScreen.id, (route) => false);
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
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                border: Border.all(
                                  color: ColorConstant.teal600,
                                  width: getHorizontalSize(
                                    1.00,
                                  ),
                                ),
                              ),
                              child: Text(
                                "Browse Jobs",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: ColorConstant.teal600,
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
