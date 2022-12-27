import 'package:country_list_pick/country_list_pick.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import '../verify_screen/verify_screen.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordPage extends StatefulWidget {
  static String id = "ForgotPasswordPage";

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  String dialCode = '+20';

  @override
  void initState() {
    super.initState();
    tabController = tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: EdgeInsets.only(
                left: getHorizontalSize(
                  20.00,
                ),
                right: getHorizontalSize(
                  20.00,
                ),
                top: getVerticalSize(30)),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                  alignment: context.locale == Constants.engLocal
                      ? Alignment.centerLeft
                      : Alignment.centerRight,
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
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                          child: Icon(Icons.arrow_back_ios,
                              color: isDark ? Colors.white : Colors.black)),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        22.00,
                      ),
                      top: getVerticalSize(
                        28.00,
                      ),
                      right: getHorizontalSize(
                        22.00,
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
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        7.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                    ),
                    child: Text(
                      "Forgot Passowrd",
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
                ),
                Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        20.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                    ),
                    child: Text(
                      "Enter your email or phone number, we will send you verification code",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: isDark ? Colors.white : ColorConstant.gray9007e,
                        fontSize: getFontSize(
                          14,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: getVerticalSize(80)),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: getHorizontalSize(8),
                        vertical: getVerticalSize(8)),
                    decoration: BoxDecoration(
                        color: isDark
                            ? ColorConstant.darkContainer
                            : ColorConstant.blue50,
                        borderRadius:
                            BorderRadius.circular(getHorizontalSize(16))),
                    child: TabBar(
                        controller: tabController,
                        indicator: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(getHorizontalSize(16)),
                            color: isDark
                                ? ColorConstant.darkbutton
                                : Colors.white),
                        labelColor: isDark ? Colors.white : Colors.black,
                        unselectedLabelColor:
                            isDark ? Colors.white : Colors.black,
                        labelStyle: TextStyle(
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        unselectedLabelStyle: TextStyle(
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                        tabs: [
                          Tab(
                            text: "Email",
                          ),
                          Tab(
                            text: "Phone",
                          )
                        ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: getVerticalSize(60)),
                  height: getVerticalSize(65),
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Container(
                        height: getVerticalSize(
                          52.00,
                        ),
                        width: getHorizontalSize(
                          327.00,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Email',
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
                                  19.00,
                                ),
                                child: isDark
                                    ? SvgPicture.asset(
                                        ImageConstant.imgMailoutline1,
                                        fit: BoxFit.contain,
                                        color: Colors.white,
                                      )
                                    : SvgPicture.asset(
                                        ImageConstant.imgMailoutline1,
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
                                19.50,
                              ),
                              bottom: getVerticalSize(
                                19.50,
                              ),
                            ),
                          ),
                          style: TextStyle(
                            fontSize: getFontSize(
                              14.0,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getHorizontalSize(16)),
                        decoration: BoxDecoration(
                            border: Border.all(color: ColorConstant.teal600),
                            borderRadius:
                                BorderRadius.circular(getHorizontalSize(16))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CountryListPick(
                              theme: CountryTheme(
                                isShowFlag: true,
                                isShowTitle: false,
                                isShowCode: true,
                                isDownIcon: false,
                                showEnglishName: false,
                                labelColor: Colors.black,
                              ),
                              initialSelection: dialCode,
                              // or
                              // initialSelection: 'US'
                              onChanged: (code) {
                                setState(() {
                                  if (code!.dialCode != null) {
                                    dialCode = code.dialCode!;
                                  } else
                                    print("dialCode is null");
                                });
                              },
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: getVerticalSize(9),
                                  horizontal: getHorizontalSize(8)),
                              child: VerticalDivider(
                                color: ColorConstant.gray500,
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(170),
                              child: TextFormField(
                                cursorColor: ColorConstant.gray500,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: 'Your Phone Number ',
                                  enabledBorder: InputBorder.none,
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  isDense: true,
                                  contentPadding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      8.00,
                                    ),
                                    right: getHorizontalSize(
                                      8.00,
                                    ),
                                    top: getVerticalSize(
                                      21.20,
                                    ),
                                    bottom: getVerticalSize(
                                      19.20,
                                    ),
                                  ),
                                ),
                                style: TextStyle(
                                  color: ColorConstant.gray500,
                                  fontSize: getFontSize(
                                    16.0,
                                  ),
                                  fontFamily: 'Merriweather',
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
                Padding(
                  padding: EdgeInsets.only(
                      left: getHorizontalSize(24),
                      right: getHorizontalSize(24),
                      top: getVerticalSize(180),
                      bottom: getVerticalSize(20)),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, VerifyScreen.id);
                    },
                    child: Container(
                      width: getHorizontalSize(350),
                      height: getVerticalSize(55),
                      decoration: BoxDecoration(
                          color: ColorConstant.teal600,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(16))),
                      child: Center(
                        child: Text(
                          'Send code',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
