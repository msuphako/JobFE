import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/reset_password_confirmation_screen/reset_password_confirmation_screen.dart';

class ResetPassword1Screen extends StatefulWidget {
  static String id="ResetPassword1Screen";

  @override
  State<ResetPassword1Screen> createState() => _ResetPassword1ScreenState();
}

class _ResetPassword1ScreenState extends State<ResetPassword1Screen> {
  bool obscure1=true;
  bool obscure2=true;
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
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
                                    18.00,
                                  ),
                                  right: getHorizontalSize(
                                    18.00,
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
                                      child: Container(
                                        height: getSize(
                                          24.00,
                                        ),
                                        width: getSize(
                                          24.00,
                                        ),
                                        child: Icon(Icons.arrow_back_ios,
                                  color: 
                                  isDark?Colors.white:Colors.black
                                  )
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
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                18.73,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child: Text(
                              "Reset Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: getFontSize(
                                  24,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              311.00,
                            ),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                17.00,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child: Text(
                              "Enter your new password and confirm the new password to reset password",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:isDark?ColorConstant.whiteA700: ColorConstant.gray9007e,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                         Align(
                          alignment: Alignment.center,
                          child:   Padding(
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
                            child: Container(
                              height: getVerticalSize(
                                52.00,
                              ),
                              width: getHorizontalSize(
                                327.00,
                              ),
                              child: TextFormField(
                                obscureText: obscure1,
                                decoration: InputDecoration(
                                  hintText: 'Password',
                                  hintStyle: TextStyle(
                                    fontSize: getFontSize(
                                      14.0,
                                    ),
                                    
                                  ),
                               
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        24.00,
                                      ),
                                      right: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child:Container(
                                      height: getSize(
                                        20.00,
                                      ),
                                      width: getSize(
                                        19.00,
                                      ),
                                      child:isDark? SvgPicture.asset(
                                        ImageConstant.imgPassword613,
                                        fit: BoxFit.contain,
                                        color: Colors.white,
                                      ):SvgPicture.asset(
                                        ImageConstant.imgPassword613,
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
                                      25.50,
                                    ),
                                    bottom: getVerticalSize(
                                      .50,
                                    ),
                                  ),
                               
                               suffixIcon: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
                                        child: GestureDetector(
                                              onTap: (){
                                                setState(() {
                                                  obscure1=!obscure1;
                                                });
                                              },
                                              child:obscure1? Icon(Icons.visibility_off_outlined,color:isDark?Colors.white: ColorConstant.black900)
                                                  :Icon(Icons.visibility_outlined,color:isDark?Colors.white: ColorConstant.black900,)),
                                      ),
                               
                                ),
                                style: TextStyle(
                                  color: ColorConstant.gray900,
                                  fontSize: getFontSize(
                                    14.0,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
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
                                24.00,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                52.00,
                              ),
                              width: getHorizontalSize(
                                327.00,
                              ),
                              child: TextFormField(
                                obscureText: obscure2,
                                decoration: InputDecoration(
                                  hintText: 'Confirm Password',
                                  hintStyle: TextStyle(
                                    fontSize: getFontSize(
                                      14.0,
                                    ),
                                    
                                  ),
                               
                                  prefixIcon: Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        24.00,
                                      ),
                                      right: getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                    child:Container(
                                      height: getSize(
                                        20.00,
                                      ),
                                      width: getSize(
                                        19.00,
                                      ),
                                      child:isDark? SvgPicture.asset(
                                        ImageConstant.imgPassword613,
                                        fit: BoxFit.contain,
                                        color: Colors.white,
                                      ):SvgPicture.asset(
                                        ImageConstant.imgPassword613,
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
                                      25.50,
                                    ),
                                    bottom: getVerticalSize(
                                      .50,
                                    ),
                                  ),
                               
                               suffixIcon: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
                                        child: GestureDetector(
                                              onTap: (){
                                                setState(() {
                                                  obscure2=!obscure2;
                                                });
                                              },
                                              child:obscure2? Icon(Icons.visibility_off_outlined,color:isDark?Colors.white: ColorConstant.black900)
                                                  :Icon(Icons.visibility_outlined,color:isDark?Colors.white: ColorConstant.black900,)),
                                      ),
                               
                                ),
                                style: TextStyle(
                                  color: ColorConstant.gray900,
                                  fontSize: getFontSize(
                                    14.0,
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
                                54.00,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, ResetPasswordConfirmationScreen.id);
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
                                  "Reset Password",
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
