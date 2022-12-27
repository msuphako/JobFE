import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

class SelectLanguage extends StatefulWidget {
  static String id="SelectLanguage";
  const SelectLanguage({ Key? key }) : super(key: key);

  @override
  State<SelectLanguage> createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
       appBar:AppBar(
        elevation: 0,
       
        
        leading:GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back,)) ,

centerTitle: true,
        title:Text(
                          "Select Language",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            
                            fontSize: getFontSize(
                              16,
                            ),
                            fontFamily: 'Noto Sans JP',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
        
       ),
      
      


     
      body: Container(
        width: size.width,
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
             
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               
                Padding(
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
                    bottom: getVerticalSize(
                      48.00,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Align(
                              alignment: Alignment.center,
                              child: Container(
                                    height: getVerticalSize(
                                      56.00,
                                    ),
                                    width: getHorizontalSize(
                                      327.00,
                                    ),
                                    child: TextFormField(
                                      
                                    
                                      decoration: InputDecoration(
                                        hintText: "search Language...",
                                      
                                        hintStyle: TextStyle(
                                          fontSize: getFontSize(
                                            14.0,
                                          ),
                                          color: ColorConstant.gray600,
                                        ),
                                       
                                        
                                        
                                        prefixIcon: Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              20.00,
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
                                              child:Icon(Icons.search)
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
                                            21.50,
                                          ),
                                          bottom: getVerticalSize(
                                            21.50,
                                          ),
                                        ),
                                      ),
                                      style: TextStyle(
                                        color: ColorConstant.gray900,
                                        fontSize: getFontSize(
                                          14.0,
                                        ),
                                        fontFamily: 'Noto Sans JP',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  
                                  
                                  ),
                            
                           
                           
                            ),
                           
                           
                     
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          top: getVerticalSize(
                            24.00,
                          ),
                           bottom: getVerticalSize(
                            24.00,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color:isDark?ColorConstant.darkbutton: ColorConstant.gray50,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              20.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    16.00,
                                  ),
                                  top: getVerticalSize(
                                    10.00,
                                  ),
                                  bottom: getVerticalSize(
                                    10.00,
                                  ),
                                  right: getHorizontalSize(
                                    16.00,
                                  ),
                                ),
                                child:Column(
                                   children: [
                                     Align(
      alignment: Alignment.center,
      child:GestureDetector(
                                                    onTap:()async{
                                                      setState(() async{
                                                       

                                                       await context.setLocale(Locale("en"));
                                                      
                                                     
                                                      });
                                                      
                                                    },
                                                    child: Container(
                                                       height: getVerticalSize(
                                                          56.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          303.00,
                                                        ),
                                                       decoration: BoxDecoration(
                                                          color:context.locale==Constants.engLocal?isDark?ColorConstant.darkContainer: ColorConstant.whiteA700:isDark?ColorConstant.darkbutton: ColorConstant.gray50,
                                                          borderRadius: BorderRadius.circular(getHorizontalSize(16))
                                                  
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Row(
                                                              children: [
                                                             
                                                            Padding(
                                                              padding:  EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
                                                              child: Text("English (USA)",style: TextStyle(
                                                                fontSize:
                                                                    getFontSize(
                                                                  14.0,
                                                                ),
                                                               
                                                              ),),
                                                            )
                                                            
                                                            ],),
                                                  
                                                        
                                                        ]),
                                                        
                                                  
                                                    ),
                                                  ),
                                                
                                                
    
    ),
    GestureDetector(
                                                    onTap:()async{
                                                      setState(() async{
                                                       

                                                       await context.setLocale(Locale("ar"));
                                                      
                                                     
                                                      });
                                                      
                                                    },
                                                    child: Container(
                                                       height: getVerticalSize(
                                                          56.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          303.00,
                                                        ),
                                                       decoration: BoxDecoration(
                                                          color:context.locale==Constants.arLocal?isDark?
                                                          ColorConstant.darkContainer: ColorConstant.whiteA700:isDark?ColorConstant.darkbutton: ColorConstant.gray50,
                                                          borderRadius: BorderRadius.circular(getHorizontalSize(16))
                                                  
                                                        ),
                                                        child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Row(
                                                              children: [
                                                             
                                                            Padding(
                                                              padding:  EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
                                                              child: Text("Arabic (EG)",style: TextStyle(
                                                                fontSize:
                                                                    getFontSize(
                                                                  14.0,
                                                                ),
                                                               
                                                              ),),
                                                            )
                                                            
                                                            ],),
                                                  
                                                         
                                                            
                                                        ]),
                                                        
                                                  
                                                    ),
                                                  ),
                                                
                
                                   ],
                                )
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
      ),
    );
  }
}