import 'package:easy_localization/easy_localization.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/presentation/job_details1_screen/job_details1_screen.dart';
import '../solo_category_job_listing_screen/widgets/solo_category_job_listing_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';

class SoloCategoryJobListingScreen extends StatelessWidget {
  static String id ="SoloCategoryJobListingScreen";
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
       appBar: AppBar(
         backgroundColor: isDark?ColorConstant.darkbutton:Colors.white,
        title: Text(
                                              "UX Designer Jobs",
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
          child: Container(
           
            
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     
                   
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            34.00,
                          ),
                          bottom: getVerticalSize(
                            23.00,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
left: context.locale==Constants.engLocal? getHorizontalSize(
                                              24.00,
                                            ):getHorizontalSize(0),
                                            right: context.locale==Constants.arLocal? getHorizontalSize(
                                              24.00,
                                            ):getHorizontalSize(0),
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment(
                                    0.499999929597414,
                                    -0.0942028998261347,
                                  ),
                                  end: Alignment(
                                    0.4999999295974309,
                                    1.0869564674067003,
                                  ),
                                  colors: [
                                    ColorConstant.orange100,
                                    ColorConstant.orange300,
                                  ],
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        15.00,
                                      ),
                                      top: getVerticalSize(
                                        15.00,
                                      ),
                                      right: getHorizontalSize(
                                        15.00,
                                      ),
                                    ),
                                    child: Text(
                                      "UX",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          24,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        15.00,
                                      ),
                                      right: getHorizontalSize(
                                        15.00,
                                      ),
                                      bottom: getVerticalSize(
                                        15.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Design",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray90096,
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
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  16.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
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
                                      243.00,
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
                                            top: getVerticalSize(
                                              2.00,
                                            ),
                                            bottom: getVerticalSize(
                                              1.00,
                                            ),
                                          ),
                                          child: Text(
                                            "437 Jobs",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.teal600,
                                              fontSize: getFontSize(
                                                13,
                                              ),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "86 Companies",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(
                                              13,
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
                                      243.00,
                                    ),
                                    margin: EdgeInsets.only(
                                      top: getVerticalSize(
                                        9.00,
                                      ),
                                    ),
                                    child: Text(
                                      "The UX designer role is to make a pro-duct usable, enjoyable & accessible.",
                                      maxLines: null,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        
                                        fontSize: getFontSize(
                                          13,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
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
              
              
                Padding(
                  padding: EdgeInsets.only(
                    top: getVerticalSize(
                      24.00,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHorizontalSize(
                            24.00,
                          ),
                          right: getHorizontalSize(
                            24.00,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Featured Jobs",
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
                            Text(
                              "See all",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: ColorConstant.gray500,
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
                      Container(
                        height: getVerticalSize(
                          250.00,
                        ),
                        width: getHorizontalSize(
                          327.00,
                        ),
                        margin: EdgeInsets.only(
                          left: getHorizontalSize(
                            24.00,
                          ),
                          top: getVerticalSize(
                            19.00,
                          ),
                          right: getHorizontalSize(
                            24.00,
                          ),
                        ),
                        child:ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          
                          itemBuilder:(context, index) {
                          return   Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(

                                          child: Align(
                                            alignment: Alignment.topLeft,
                                            child: GestureDetector(
                                              onTap: (){
                                                Navigator.pushNamed(context, JobDetails1Screen.id);
                                              },
                                              child:isDark? darkCustomContainer(
                                                child: Row(
                                                  children: [
                                                     Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        24.00,
                                                      ),
                                                      top: getVerticalSize(
                                                        10.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        24.00,
                                                      ),
                                                    ),
                                                    child: Image.asset(
                                                      ImageConstant
                                                          .imgImage29,
                                                      height: getSize(
                                                        43.00,
                                                      ),
                                                      width: getSize(
                                                        43.00,
                                                      ),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),

                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: getVerticalSize(
                                                              16.00,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(

                                                                  bottom:
                                                                      getVerticalSize(
                                                                    1.00,
                                                                  ),
                                                                ),
                                                                child: Text(
                                                                  "UX Designer",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style:
                                                                      TextStyle(

                                                                    fontSize:
                                                                        getFontSize(
                                                                      14,
                                                                    ),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                    65.00,
                                                                  ),
                                                                  right:
                                                                      getHorizontalSize(
                                                                    24.00,
                                                                  ),
                                                                ),
                                                                child: Text(
                                                                  "${Constants.currency }84,000/y",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      TextStyle(

                                                                    fontSize:
                                                                        getFontSize(
                                                                      12,
                                                                    ),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: getVerticalSize(
                                                              3.00,
                                                            ),
                                                            bottom:
                                                                getVerticalSize(
                                                              15.00,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(

                                                                ),
                                                                child: Text(
                                                                  "Telegram",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style:
                                                                      TextStyle(
                                                                    color:isDark?Colors.white: ColorConstant
                                                                        .gray90087,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      13,
                                                                    ),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  right:
                                                                      getHorizontalSize(
                                                                    24.00,
                                                                  ),
                                                                ),
                                                                child: Text(
                                                                  "Florida, US",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      TextStyle(
                                                                    color:isDark?Colors.white: ColorConstant
                                                                        .gray90087,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      13,
                                                                    ),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),

                                              ):lightCostumContainer(child:  Row(
                                                  children: [
                                                     Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        24.00,
                                                      ),
                                                      top: getVerticalSize(
                                                        10.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        24.00,
                                                      ),
                                                    ),
                                                    child: Image.asset(
                                                      ImageConstant
                                                          .imgImage29,
                                                      height: getSize(
                                                        43.00,
                                                      ),
                                                      width: getSize(
                                                        43.00,
                                                      ),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),

                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: getVerticalSize(
                                                              16.00,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(

                                                                  bottom:
                                                                      getVerticalSize(
                                                                    1.00,
                                                                  ),
                                                                ),
                                                                child: Text(
                                                                  "UX Designer",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style:
                                                                      TextStyle(

                                                                    fontSize:
                                                                        getFontSize(
                                                                      14,
                                                                    ),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left:
                                                                      getHorizontalSize(
                                                                    65.00,
                                                                  ),
                                                                  right:
                                                                      getHorizontalSize(
                                                                    24.00,
                                                                  ),
                                                                ),
                                                                child: Text(
                                                                  "${Constants.currency }84,000/y",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      TextStyle(

                                                                    fontSize:
                                                                        getFontSize(
                                                                      12,
                                                                    ),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                            top: getVerticalSize(
                                                              3.00,
                                                            ),
                                                            bottom:
                                                                getVerticalSize(
                                                              15.00,
                                                            ),
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            mainAxisSize:
                                                                MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(

                                                                ),
                                                                child: Text(
                                                                  "Telegram",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .left,
                                                                  style:
                                                                      TextStyle(
                                                                    color:isDark?Colors.white: ColorConstant
                                                                        .gray90087,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      13,
                                                                    ),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                  right:
                                                                      getHorizontalSize(
                                                                    24.00,
                                                                  ),
                                                                ),
                                                                child: Text(
                                                                  "Florida, US",
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style:
                                                                      TextStyle(
                                                                    color:isDark?Colors.white: ColorConstant
                                                                        .gray90087,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      13,
                                                                    ),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
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
                          );
                                   
                        },)
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        32.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                      bottom: getVerticalSize(
                        0.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  2.00,
                                ),
                                bottom: getVerticalSize(
                                  2.00,
                                ),
                              ),
                              child: Text(
                                "Popular Jobs",
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
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  2.00,
                                ),
                                right: getHorizontalSize(
                                  2.00,
                                ),
                              ),
                              child: Text(
                                "See all",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: ColorConstant.gray500,
                                  fontSize: getFontSize(
                                    13,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: getVerticalSize(
                            205.00,
                          ),
                        
                          child: ListView.builder(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                18.00,
                              ),
                            ),
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return SoloCategoryJobListingItemWidget();
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
