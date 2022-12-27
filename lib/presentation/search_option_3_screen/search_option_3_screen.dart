import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/search_result_2_screen/search_result_2_screen.dart';
import '../searchfilterbottomsheet_page/searchfilterbottomsheet_page.dart';

class SearchOption3Screen extends StatelessWidget {
  static String id="SearchOption3Screen";
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
        appBar: AppBar(
        title: Text(
                                              "Search",
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
         leading:  GestureDetector(
           onTap: (){
             Navigator.pop(context);
           },
           child: Padding(
             padding: EdgeInsets.only(
               left: getHorizontalSize(
                 18.00,
               ),
               right: getHorizontalSize(
                 18.00,
               ),
              top: getVerticalSize(20),
               bottom: getVerticalSize(20)


             ),
             child: Container(
                 height: getSize(
                   24.00,
                 ),
                 width: getSize(
                   24.00,
                 ),

                 child: SvgPicture.asset(
                   ImageConstant.imgAkariconscros3,
                   fit: BoxFit.fill,
                   color: isDark?ColorConstant.whiteA700:Colors.black,
                 ),
               ),
           ),
         ),
                         
        
     
     ),
     
     
      body: Container(
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
                      top: getVerticalSize(
                        16.00,
                      ),
                      bottom: getVerticalSize(
                        20.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Container(
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            263.00,
                          ),
                          child: TextFormField(
                           
                           
                            decoration: InputDecoration(
                              hintText: 'Search a job or position',
                             
                            
                              prefixIcon: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    24.00,
                                  ),
                                  right: getHorizontalSize(
                                    10.00,
                                  ),
                                ),
                                child: Container(
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                  child:isDark? SvgPicture.asset(
                                    ImageConstant.imgSearch11,
                                    fit: BoxFit.contain,
                                     color: Colors.white,

                                  ):SvgPicture.asset(
                                    ImageConstant.imgSearch11,
                                    fit: BoxFit.contain,
                                   

                                  ),
                                ),
                              ),
                              prefixIconConstraints: BoxConstraints(
                                minWidth: getSize(
                                  20.00,
                                ),
                                minHeight: getSize(
                                  20.00,
                                ),
                              ),
                             
                              isDense: true,
                              contentPadding: EdgeInsets.only(
                                top: getVerticalSize(
                                  17.75,
                                ),
                                bottom: getVerticalSize(
                                  17.75,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                15.0,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          height: getSize(
                            48.00,
                          ),
                          width: getSize(
                            48.00,
                          ),
                          margin: EdgeInsets.only(
left: context.locale==Constants.engLocal? getHorizontalSize(
                                              16.00,
                                            ):getHorizontalSize(0),
                                            right: context.locale==Constants.arLocal? getHorizontalSize(
                                              16.00,
                                            ):getHorizontalSize(0),
                          ),
                          decoration: BoxDecoration(
                            color:isDark?ColorConstant.darkContainer: ColorConstant.gray100,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                12.00,
                              ),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      11.00,
                                    ),
                                    top: getVerticalSize(
                                      11.00,
                                    ),
                                    right: getHorizontalSize(
                                      11.00,
                                    ),
                                    bottom: getVerticalSize(
                                      11.00,
                                    ),
                                  ),
                                  child: GestureDetector(
                                    onTap: (){
                                        showModalBottomSheet(
                                          context: context,
                                          isScrollControlled: true,
                                          shape: RoundedRectangleBorder(
                                            
                                              borderRadius: BorderRadius.vertical(
                                                top: Radius.circular(20),
                                              )
                                          ),
                                          builder: (context) {
                                            return SearchfilterbottomsheetPage();
                                          });
                                    },
                                    child: Container(
                                      height: getSize(
                                        26.00,
                                      ),
                                      width: getSize(
                                        26.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgFilter5,
                                        fit: BoxFit.fill,
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
               
               Padding(
                 padding:  EdgeInsets.only(top: getVerticalSize(20)),
                 child: ListView.builder(
                   scrollDirection: Axis.vertical,
                   physics: BouncingScrollPhysics(),
                   itemCount: 1,
                   shrinkWrap: true,
                   
                   itemBuilder:
                 ((context, index) {
                  
                   return   Align(
                            alignment: Alignment.centerLeft,
                            child: GestureDetector(
                                onTap: (){
                       Navigator.pushNamed(context, SearchResult2Screen.id);
                     },
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    78.00,
                                  ),
                                  top: getVerticalSize(
                                    12.00,
                                  ),
                                  right: getHorizontalSize(
                                    78.00,
                                  ),
                                ),
                                child: RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Solfware Engineer',
                                        style: TextStyle(
                                          color: ColorConstant.gray600,
                                          fontSize: getFontSize(
                                            15,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                      // TextSpan(
                                      //   text: ' Engineer',
                                      //   style: TextStyle(
                                      //     color:isDark?Colors.white:Colors.black,
                                         
                                      //     fontSize: getFontSize(
                                      //       15,
                                      //     ),
                                      //     fontFamily: 'Poppins',
                                      //     fontWeight: FontWeight.w400,
                                      //   ),
                                      // ),
                                    ],
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                           
                           
                            ),
                          );
                 })
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
