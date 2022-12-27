import 'package:easy_localization/easy_localization.dart';
import '../search_result_2_screen/widgets/group17_item_widget.dart';
import '../search_result_2_screen/widgets/group603_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class SearchResult2Screen extends StatelessWidget {
  static String id = "SearchResult2Screen";
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "Ux Designer",
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
          centerTitle: false,
          elevation: 0,
          leading: Align(
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
                        size: getSize(20),
                        color: isDark ? Colors.white : Colors.black)),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getHorizontalSize(16),
                  vertical: getVerticalSize(18)),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: getSize(
                    18.00,
                  ),
                  width: getSize(
                    18.00,
                  ),
                  child: SvgPicture.asset(
                    ImageConstant.imgAkariconscros4,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ],
          backgroundColor: isDark ? ColorConstant.darkContainer : Colors.white),
      body: Container(
        width: size.width,
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: isDark
                      ? ColorConstant.darkContainer
                      : ColorConstant.whiteA700,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: getVerticalSize(
                        1.00,
                      ),
                      width: getHorizontalSize(
                        327.00,
                      ),
                      margin: EdgeInsets.only(
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
                      decoration: BoxDecoration(
                        color: ColorConstant.gray402,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          24.00,
                        ),
                        bottom: getVerticalSize(
                          16.00,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              left: context.locale == Constants.engLocal
                                  ? getHorizontalSize(
                                      24.00,
                                    )
                                  : getHorizontalSize(0),
                              right: context.locale == Constants.arLocal
                                  ? getHorizontalSize(
                                      24.00,
                                    )
                                  : getHorizontalSize(0),
                            ),
                            child: Text(
                              "293 Jobs Found",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.start,
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
                          Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                4.00,
                              ),
                              left: context.locale == Constants.engLocal
                                  ? getHorizontalSize(
                                      0.00,
                                    )
                                  : getHorizontalSize(24),
                              right: context.locale == Constants.arLocal
                                  ? getHorizontalSize(
                                      0.00,
                                    )
                                  : getHorizontalSize(24),
                              bottom: getVerticalSize(
                                3.00,
                              ),
                            ),
                            child: Container(
                              height: getVerticalSize(
                                14.00,
                              ),
                              width: getHorizontalSize(
                                12.60,
                              ),
                              child: SvgPicture.asset(
                                ImageConstant.imgIconlylightfi,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            20.00,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: context.locale == Constants.engLocal
                                    ? getHorizontalSize(
                                        26.00,
                                      )
                                    : getHorizontalSize(0),
                                right: context.locale == Constants.arLocal
                                    ? getHorizontalSize(
                                        26.00,
                                      )
                                    : getHorizontalSize(0),
                                bottom: getVerticalSize(
                                  2.00,
                                ),
                              ),
                              child: Text(
                                "Recommended Jobs",
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
                                left: context.locale == Constants.engLocal
                                    ? getHorizontalSize(
                                        0.00,
                                      )
                                    : getHorizontalSize(24),
                                right: context.locale == Constants.arLocal
                                    ? getHorizontalSize(
                                        0.00,
                                      )
                                    : getHorizontalSize(24),
                              ),
                              child: Text(
                                "See all",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
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
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              0.00,
                            ),
                            top: getVerticalSize(
                              14.00,
                            ),
                            right: getHorizontalSize(
                              0.00,
                            ),
                          ),
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: 2,
                            itemBuilder: (context, index) {
                              return Group603ItemWidget();
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            24.00,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                left: context.locale == Constants.engLocal
                                    ? getHorizontalSize(
                                        26.00,
                                      )
                                    : getHorizontalSize(0),
                                right: context.locale == Constants.arLocal
                                    ? getHorizontalSize(
                                        26.00,
                                      )
                                    : getHorizontalSize(0),
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
                                left: context.locale == Constants.engLocal
                                    ? getHorizontalSize(
                                        0.00,
                                      )
                                    : getHorizontalSize(40),
                                right: context.locale == Constants.arLocal
                                    ? getHorizontalSize(
                                        0.00,
                                      )
                                    : getHorizontalSize(40),
                              ),
                              child: Text(
                                "See all",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
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
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.only(bottom: getVerticalSize(20)),
                          child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              mainAxisExtent: getVerticalSize(
                                190.00,
                              ),
                              crossAxisCount: 2,
                              mainAxisSpacing: getHorizontalSize(
                                0.00,
                              ),
                              crossAxisSpacing: getHorizontalSize(
                                0.00,
                              ),
                            ),
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 4,
                            itemBuilder: (context, index) {
                              return Group17ItemWidget();
                            },
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
    );
  }
}
