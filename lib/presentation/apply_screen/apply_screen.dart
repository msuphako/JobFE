import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/presentation/apply_success_2_screen/apply_success_2_screen.dart';
import '../apply_screen/widgets/group2073_item_widget.dart';
import '../apply_screen/widgets/group2074_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

import '../resume_portfolio_upload_screen/resume_portfolio_upload_screen.dart';

class ApplyScreen extends StatelessWidget {
  static String id="ApplyScreen";
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
       resizeToAvoidBottomInset: false,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton:Padding(
          padding:  EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
          child: Container(
            width: getHorizontalSize(330),
            height: getVerticalSize(50),
            child: FloatingActionButton.extended(
        
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(getHorizontalSize(12))
                ),
                backgroundColor: ColorConstant.teal600,
                foregroundColor: ColorConstant.whiteA700,
                extendedTextStyle: TextStyle(
                  color: ColorConstant.gray50,
                  fontSize: getFontSize(
                    14,
                  ),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.07,
                ),

                onPressed: (){
                  Navigator.pushNamed(context, ApplySuccess2Screen.id);
                },
                label:Text('Apply')),
          ),
        ),
       appBar: AppBar(
         backgroundColor: isDark?ColorConstant.darkbutton:ColorConstant.whiteA700,

        title: Text(
                                              "Apply",
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
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
                            alignment: Alignment.centerLeft,
                            child: Container(
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
                                        30.00,
                                      ),
                                      bottom: getVerticalSize(
                                        20.00,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  119.00,
                                                ),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Image.asset(
                                                    ImageConstant.imgSpotigy13,
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
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: getHorizontalSize(
                                                  220.00,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        bottom: getVerticalSize(
                                                          1.00,
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "Product Designer",
                                                       
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                         
                                                          fontSize: getFontSize(
                                                            14,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "${Constants.currency }88,000/y",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: TextStyle(
                                                       
                                                        fontSize: getFontSize(
                                                          12,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      "Spotify",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        color:isDark?Colors.white: ColorConstant
                                                            .gray90087,
                                                        fontSize: getFontSize(
                                                          13,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                    Text(
                                                      "Los Angels, US",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:
                                                          TextAlign.right,
                                                      style: TextStyle(
                                                        color:isDark?Colors.white: ColorConstant
                                                            .gray90087,
                                                        fontSize: getFontSize(
                                                          13,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
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
                          ),
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
                                "Select a profile",
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
                          ),
                          Container(
                            height: getVerticalSize(
                              200.00,
                            ),
                           
                            child: ListView.builder(
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
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Group2073ItemWidget();
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
                                  32.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: Text(
                                "Select a resume",
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
                          ),
                          Container(
                            height: getVerticalSize(
                              90.00,
                            ),
                          
                            child: ListView.builder(
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
                              scrollDirection: Axis.horizontal,
                              physics: BouncingScrollPhysics(),
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Group2074ItemWidget();
                              },
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
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
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Cover Letter ',
                                      style: TextStyle(
                                        color: isDark?Colors.white:Colors.black,
                                       
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '(Optional)',
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          16,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  16.00,
                                ),
                                 bottom: getVerticalSize(
                                  50.00,
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        24.00,
                                      ),
                                    ),
                                    child: Container(
                                       height: getVerticalSize(
                                          87.00,
                                        ),
                                        width: getHorizontalSize(
                                          243.00,
                                        ),
                                        alignment: Alignment.center,
                                      child:isDark? 
                                      darkCustomContainer(
                                        child:  Align(
                                          alignment: Alignment.topCenter,
                                          child: Padding(
                                             padding: MediaQuery
                                                    .of(context)
                                                    .viewInsets,
                                            child: TextFormField(
                                            
                                              decoration: InputDecoration(
                                                hintText: "Write a cover letter......",
                                               border:UnderlineInputBorder(
                                                 borderSide: BorderSide.none
                                               ),
                                               focusedBorder: UnderlineInputBorder(
                                                 borderSide: BorderSide.none
                                               ),
                                               enabledBorder: UnderlineInputBorder(
                                                 borderSide: BorderSide.none
                                               ),
                                               filled: false,
                                               
                                        
                                              ),
                                              
                                            ),
                                          ),
                                        )
                                                                     
                                      ):
                                      lightCostumContainer(
                                        child:  Align(
                                          alignment: Alignment.center,
                                          child: Padding(
                                             padding: MediaQuery
                                                    .of(context)
                                                    .viewInsets,
                                            child: TextFormField(

                                              decoration: InputDecoration(
                                                hintText: "Write a cover letter......",
                                               border:UnderlineInputBorder(
                                                 borderSide: BorderSide.none
                                               ),
                                               focusedBorder: UnderlineInputBorder(
                                                 borderSide: BorderSide.none
                                               ),
                                               enabledBorder: UnderlineInputBorder(
                                                 borderSide: BorderSide.none
                                               ),
                                               filled: false,


                                              ),

                                            ),
                                          ),
                                        )

                                      ),
                                  
                                  
                                   ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.pushNamed(context, ResumePortfolioUploadScreen.id);
                                    },
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          16.00,
                                        ),
                                        right: getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      decoration: BoxDecoration(
                                        color:isDark?ColorConstant.darkbutton: ColorConstant.whiteA700,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            12.00,
                                          ),
                                        ),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                16.00,
                                              ),
                                              top: getVerticalSize(
                                                16.00,
                                              ),
                                              right: getHorizontalSize(
                                                16.00,
                                              ),
                                            ),
                                            child: Container(
                                              height: getSize(
                                                16.00,
                                              ),
                                              width: getSize(
                                                16.00,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant.imgBiupload1,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              36.00,
                                            ),
                                            margin: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                16.00,
                                              ),
                                              top: getVerticalSize(
                                                9.00,
                                              ),
                                              right: getHorizontalSize(
                                                16.00,
                                              ),
                                              bottom: getVerticalSize(
                                                16.00,
                                              ),
                                            ),
                                            child: Text(
                                              "Upload\nPDF",
                                              maxLines: null,
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: ColorConstant.teal600,
                                                fontSize: getFontSize(
                                                  10,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
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
