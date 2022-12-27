import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Verify1Screen extends StatelessWidget {
  static String id="Verify1Screen";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: ColorConstant.gray50,
              ),
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
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: size.width,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    18.00,
                                  ),
                                  right: getHorizontalSize(
                                    170.00,
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
                                          29.00,
                                        ),
                                      ),
                                      child: Container(
                                        height: getSize(
                                          24.00,
                                        ),
                                        width: getSize(
                                          24.00,
                                        ),
                                        child: SvgPicture.asset(
                                          ImageConstant.imgAkariconschev5,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          21.00,
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
                                5.73,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child: Text(
                              "Verify Code",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.gray900,
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
                              "Enter your verification code from your email or phone number that we’ve sent",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.gray9007e,
                                fontSize: getFontSize(
                                  14,
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
                                87.27,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child: Container(
                              width: getHorizontalSize(
                                268.00,
                              ),
                              child: PinCodeTextField(
                                appContext: context,
                                length: 4,
                                obscureText: false,
                                obscuringCharacter: '*',
                                keyboardType: TextInputType.number,
                                autoDismissKeyboard: true,
                                enableActiveFill: true,
                                onChanged: (value) {},
                                textStyle: TextStyle(
                                  fontSize: getFontSize(
                                    16.0,
                                  ),
                                  color: ColorConstant.gray900,
                                ),
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
                                  selectedFillColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  activeFillColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  inactiveFillColor:
                                      ColorConstant.fromHex("#1212121D"),
                                  inactiveColor: ColorConstant.gray900,
                                  selectedColor: ColorConstant.gray900,
                                  activeColor: ColorConstant.gray900,
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
                                88.00,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
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
