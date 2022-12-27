import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/application_tracking_screen/timeline.dart';

class ApplicationTrackingScreen extends StatelessWidget {
  static String id="ApplicationTrackingScreen";
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
      appBar: AppBar(
           backgroundColor: isDark?ColorConstant.darkbutton:ColorConstant.whiteA700,
        title: Text(
                                              "Applied Job Details",
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
     
     
      body: Container(
        width: size.width,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
           
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
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
               SizedBox(height: getVerticalSize(20)),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: getHorizontalSize(40)),
                  child: Text(
                                                "Track Application",
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
                ),
                                            
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  margin: EdgeInsets.only(
                    top: getVerticalSize(20)
                   
                  ),
                  height: getVerticalSize(600),
                  width: size.width,
                  child: TimeLine()),
              )


             
             
              ],
            ),
          ),
        ),
      ),
    );
  }
}
