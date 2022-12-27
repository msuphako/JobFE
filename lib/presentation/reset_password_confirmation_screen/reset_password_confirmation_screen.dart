import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/log_in_screen/log_in_screen.dart';

class ResetPasswordConfirmationScreen extends StatelessWidget {
   static String id="ResetPasswordConfirmationScreen";
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
                 Navigator.pushNamedAndRemoveUntil(context, LogInScreen.id, (route) => false);
                },
                label:Text('Login')),
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
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
                            alignment: Alignment.center,
                            child: Container(
                              width: size.width,
                              child: Padding(
                                padding: EdgeInsets.only(
                                 
                                
                                ),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    top: getVerticalSize(
                                      15.00,
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
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              308.00,
                            ),
                            width: getHorizontalSize(
                              266.06,
                            ),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                60.00,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child:Image.asset(ImageConstant.lock)
                          
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
                              "Confirmation",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                               
                                fontSize: getFontSize(
                                  20,
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
                              "Your password has been changed. Please log in with your new password.",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:isDark?Colors.white: ColorConstant.gray9007e,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
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
