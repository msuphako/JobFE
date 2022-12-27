import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';


class ResumePortfolioUploadScreen extends StatefulWidget {
   static String id="ResumePortfolioUploadScreen";

  @override
  State<ResumePortfolioUploadScreen> createState() => _ResumePortfolioUploadScreenState();
}

class _ResumePortfolioUploadScreenState extends State<ResumePortfolioUploadScreen> {
  bool upload=true;
  bool uploading=false;
  bool uploaded=false;

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(

      body: GestureDetector(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
            
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(16)
                    ),
                    child: Align(
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
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: size.width,
                                margin: EdgeInsets.only(
                                  top: getVerticalSize(
                                    20.00,
                                  ),
                                  bottom: getVerticalSize(
                                    6.00,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      18.00,
                                    ),
                                    right: getHorizontalSize(
                                      24.00,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                     GestureDetector(
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
                                
                                    
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            1.00,
                                          ),
                                          bottom: getVerticalSize(
                                            2.00,
                                          ),
                                        ),
                                        child: Text(
                                          "Resume & Portfolio",
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
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            2.00,
                                          ),
                                          bottom: getVerticalSize(
                                            4.00,
                                          ),
                                        ),
                                        child: GestureDetector(
                                          onTap: (){
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            "Skip",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.right,
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
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
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
                        32.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: Text(
                            "Resume or CV",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color:isDark?Colors.white: ColorConstant.gray900,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),

                          if(upload)
                        Padding(
                          padding:  EdgeInsets.only(top: getVerticalSize(16)),
                          child: DottedBorder(
                            color: ColorConstant.teal600,

      
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(getHorizontalSize(16)),
                                  dashPattern: [10,3,10,3],
                             child:
                        
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: getHorizontalSize(
                                      211.00,
                                    ),
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        32.00,
                                      ),
                                      top: getVerticalSize(
                                        40.00,
                                      ),
                                      right: getHorizontalSize(
                                        32.00,
                                      ),
                                    ),
                                    child: Text(
                                      "Upload your CV or Resume and use it when you apply for jobs",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: ColorConstant.gray500,
                                        fontSize: getFontSize(
                                          13,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        32.00,
                                      ),
                                      top: getVerticalSize(
                                        32.00,
                                      ),
                                      right: getHorizontalSize(
                                        32.00,
                                      ),
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: getVerticalSize(
                                        73.00,
                                      ),
                                      width: getHorizontalSize(
                                        263.00,
                                      ),
                                      decoration: BoxDecoration(
                                        color:isDark?ColorConstant.darkbutton: ColorConstant.gray100,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            12.00,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Upload a Doc/Docx/PDF",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorConstant.teal600,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        64.00,
                                      ),
                                      top: getVerticalSize(
                                        32.00,
                                      ),
                                      right: getHorizontalSize(
                                        64.00,
                                      ),
                                      bottom: getVerticalSize(
                                        40.00,
                                      ),
                                    ),
                                    child: GestureDetector(
                                      onTap: (){
                                      setState(() {
                                        uploading=true;
                                        upload=false;
                                        uploaded=false;
                                      });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: getVerticalSize(
                                          56.00,
                                        ),
                                        width: getHorizontalSize(
                                          184.00,
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
                                          "Upload",
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
                        )
                      
                      else if(uploading)
                       Padding(
                          padding:  EdgeInsets.only(top: getVerticalSize(16)),
                          child: DottedBorder(
                            color: ColorConstant.teal600,

      
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(getHorizontalSize(16)),
                                  dashPattern: [10,3,10,3],
                             child:
                        
                           Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  211.00,
                                ),
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    58.00,
                                  ),
                                  top: getVerticalSize(
                                    40.00,
                                  ),
                                  right: getHorizontalSize(
                                    58.00,
                                  ),
                                ),
                                child: Text(
                                  "Upload your CV or Resume and use it when you apply for jobs",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.gray500,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    uploaded=true;
                                    upload=false;
                                    uploading=false;
                                  });
                                },
                                child:Padding(
                                  padding:  EdgeInsets.only(
                                    top: getVerticalSize(24)
                                  ),
                                  child: Center(child: CircularProgressIndicator(
                       color: ColorConstant.teal600,
                       backgroundColor: ColorConstant.whiteA700,
                       ),),
                                )
                             
                             
                              ),
                            
                            
                            
                             Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    58.00,
                                  ),
                                  top: getVerticalSize(
                                    48.00,
                                  ),
                                  right: getHorizontalSize(
                                    58.00,
                                  ),
                                  bottom: getVerticalSize(
                                    40.00,
                                  ),
                                ),
                                child: Text(
                                  "Uploading",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color:isDark?Colors.white: ColorConstant.gray900,
                                    fontSize: getFontSize(
                                      16,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                       
                         
                          ),
                        )
                      else if(uploaded)
                        Padding(
                          padding:  EdgeInsets.only(top: getVerticalSize(16)),
                          child: DottedBorder(
                            color: ColorConstant.teal600,

      
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(getHorizontalSize(16)),
                                  dashPattern: [10,3,10,3],
                             child:
                        
                           Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: getHorizontalSize(
                                  211.00,
                                ),
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    32.00,
                                  ),
                                  top: getVerticalSize(
                                    40.00,
                                  ),
                                  right: getHorizontalSize(
                                    32.00,
                                  ),
                                ),
                                child: Text(
                                  "Upload your CV or Resume and use it when you apply for jobs",
                                  maxLines: null,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.gray500,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  85.00,
                                ),
                                width: getHorizontalSize(
                                  280.00,
                                ),
                                margin: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    32.00,
                                  ),
                                  top: getVerticalSize(
                                    20.00,
                                  ),
                                  right: getHorizontalSize(
                                    26.00,
                                  ),
                                ),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          top: getVerticalSize(
                                            10.00,
                                          ),
                                          right: getHorizontalSize(
                                            6.00,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color:isDark?ColorConstant.darkbutton: ColorConstant.gray100,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              12.00,
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  24.00,
                                                ),
                                                top: getVerticalSize(
                                                  16.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  16.00,
                                                ),
                                              ),
                                              child: Container(
                                                height: getVerticalSize(
                                                  41.00,
                                                ),
                                                width: getHorizontalSize(
                                                  33.00,
                                                ),
                                                child: SvgPicture.asset(
                                                  ImageConstant.imgGroup135,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  16.00,
                                                ),
                                                top: getVerticalSize(
                                                  16.00,
                                                ),
                                                right: getHorizontalSize(
                                                  6.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  16.00,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Dokkan Agency Portofolio",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                    
                                                      fontSize: getFontSize(
                                                        14,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      top: getVerticalSize(
                                                        2.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        10.00,
                                                      ),
                                                    ),
                                                    child: Text(
                                                      "287 KB",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray500,
                                                        fontSize: getFontSize(
                                                          11,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w400,
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
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                        height: getSize(
                                          24.00,
                                        ),
                                        width: getSize(
                                          24.00,
                                        ),
                                        margin: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            10.00,
                                          ),
                                          bottom: getVerticalSize(
                                            10.00,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.gray50,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              12.00,
                                            ),
                                          ),
                                          border: Border.all(
                                            color:isDark?ColorConstant.darkBg: ColorConstant.bluegray100,
                                            width: getHorizontalSize(
                                              1.00,
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
                                                    6.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    6.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    6.00,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    6.00,
                                                  ),
                                                ),
                                                child: Container(
                                                  height: getSize(
                                                    12.00,
                                                  ),
                                                  width: getSize(
                                                    12.00,
                                                  ),
                                                  child: SvgPicture.asset(
                                                    ImageConstant
                                                        .imgAkariconscros6,
                                                    fit: BoxFit.fill,
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
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    32.00,
                                  ),
                                  top: getVerticalSize(
                                    32.00,
                                  ),
                                  right: getHorizontalSize(
                                    32.00,
                                  ),
                                  bottom: getVerticalSize(
                                    40.00,
                                  ),
                                ),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: getVerticalSize(
                                    56.00,
                                  ),
                                  width: getHorizontalSize(
                                    184.00,
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
                                    "Add More",
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
                            ],
                          ),
                       
                          ),
                        )
                      
                      ],
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
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                            right: getHorizontalSize(
                              10.00,
                            ),
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Portfolio ',
                                  style: TextStyle(
                                    color:isDark?Colors.white: ColorConstant.gray900,
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
                                    color: ColorConstant.gray400,
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
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              20.00,
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: getVerticalSize(
                                      44.00,
                                    ),
                                    width: getHorizontalSize(
                                      156.00,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          16.00,
                                        ),
                                      ),
                                      border: Border.all(
                                        color:isDark?Colors.white: ColorConstant.gray900,
                                        width: getHorizontalSize(
                                          1.00,
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "Portfolio Link",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color:isDark?Colors.white: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: getHorizontalSize(
                                        1.00,
                                      ),
                                    ),
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: getVerticalSize(
                                        44.00,
                                      ),
                                      width: getHorizontalSize(
                                        155.00,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            16.00,
                                          ),
                                        ),
                                        border: Border.all(
                                          color:isDark?Colors.white: ColorConstant.gray900,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Add Slide",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color:isDark?Colors.white: ColorConstant.gray900,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  top: getVerticalSize(
                                    12.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: getVerticalSize(
                                        44.00,
                                      ),
                                      width: getHorizontalSize(
                                        156.00,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            16.00,
                                          ),
                                        ),
                                        border: Border.all(
                                          color:isDark?Colors.white: ColorConstant.gray900,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Add PDF",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color:isDark?Colors.white: ColorConstant.gray900,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.center,
                                      height: getVerticalSize(
                                        44.00,
                                      ),
                                      width: getHorizontalSize(
                                        155.00,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            16.00,
                                          ),
                                        ),
                                        border: Border.all(
                                          color:isDark?Colors.white: ColorConstant.gray900,
                                          width: getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      child: Text(
                                        "Add Photos ",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color:isDark?Colors.white: ColorConstant.gray900,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
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
                      left: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        40.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                      bottom: getVerticalSize(
                        20.00,
                      ),
                    ),
                    child:uploaded?GestureDetector(
                      
                      onTap: (){
                        Navigator.pop(context);

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
                          color:uploaded?ColorConstant.teal600: ColorConstant.bluegray100,
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
                    )  :
                     GestureDetector(
                      
                      onTap: (){

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
                          color:uploaded?ColorConstant.teal600: ColorConstant.bluegray100,
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
        ),
      ),
    );
  }
}
