import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/reset_password1_screen/reset_password1_screen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyScreen extends StatelessWidget {
  static String id="VerifyScreen";
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment:context.locale==Constants.engLocal? 
                            Alignment.centerLeft:Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  18.00,
                                ),
                                right: getHorizontalSize(
                                  18.00,
                                ),
                              ),
                              child: Container(
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                                child:Icon(Icons.arrow_back_ios,
                                  color: 
                                  isDark?Colors.white:Colors.black
                                  )
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: getVerticalSize(
                                165.73,
                              ),
                              width: getHorizontalSize(
                                311.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  18.00,
                                ),
                                top: getVerticalSize(
                                  52.00,
                                ),
                                right: getHorizontalSize(
                                  18.00,
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          4.00,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                         
                                         
                                          Padding(
                                            padding: EdgeInsets.only(
                                             
                                              top: getVerticalSize(
                                                27.00,
                                              ),
                                             
                                            ),
                                            child: Text(
                                              "Verify Code",
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
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              width: getHorizontalSize(
                                                311.00,
                                              ),
                                              margin: EdgeInsets.only(
                                                top: getVerticalSize(
                                                  17.00,
                                                ),
                                              ),
                                              child: Text(
                                                "Enter your verification code from your email or phone number that we’ve sent",
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                 
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topCenter,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          124.00,
                                        ),
                                        right: getHorizontalSize(
                                          124.00,
                                        ),
                                        bottom: getVerticalSize(
                                          10.00,
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
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                18.00,
                              ),
                              top: getVerticalSize(
                                120.00,
                              ),
                              right: getHorizontalSize(
                                18.00,
                              ),
                            ),
                            child: Container(
                              width: getHorizontalSize(
                                268.00,
                              ),
                              child: PinCodeTextField(
                                cursorColor: ColorConstant.teal600,
                                appContext: context,
                                length: 4,
                                obscureText: false,
                                backgroundColor: isDark?ColorConstant.darkBg:ColorConstant.gray50,
                                obscuringCharacter: '*',
                                keyboardType: TextInputType.number,
                                autoDismissKeyboard: true,
                                enableActiveFill: true,
                                onChanged: (value) {},
                                pinTheme: PinTheme(
                                  fieldHeight: getHorizontalSize(
                                    52.00,
                                  ),
                                  fieldWidth: getHorizontalSize(
                                    52.00,
                                  ),
                                  shape: PinCodeFieldShape.box,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      12.00,
                                    ),
                                    
                                  ),
                                  selectedFillColor:isDark?ColorConstant.darkBg:
                                      ColorConstant.fromHex("#1212121D"),
                                  activeFillColor:
                                      isDark?ColorConstant.darkBg:ColorConstant.fromHex("#1212121D"),
                                  inactiveFillColor:
                                    isDark?ColorConstant.darkBg:  ColorConstant.fromHex("#1212121D"),
                                  inactiveColor:isDark?ColorConstant.whiteA700: ColorConstant.gray400,
                                  selectedColor:ColorConstant.teal600,
                                  activeColor:isDark?ColorConstant.whiteA700: ColorConstant.gray400,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  18.00,
                                ),
                                top: getVerticalSize(
                                  120.00,
                                ),
                                right: getHorizontalSize(
                                  18.00,
                                ),
                              ),
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context, ResetPassword1Screen.id);
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
                                    "Verify",
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
