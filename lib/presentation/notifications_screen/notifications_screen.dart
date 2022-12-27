import '../notifications_screen/widgets/group761_item_widget.dart';
import '../notifications_screen/widgets/group762_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class NotificationsScreen extends StatelessWidget {
  static String id="NotificationsScreen";
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: getVerticalSize(
                          10.00,
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
                                color: ColorConstant.gray50,
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
                                          6.00,
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
                                            136.00,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              height: getSize(
                                                24.00,
                                              ),
                                              width: getSize(
                                                24.00,
                                              ),
                                              child: SvgPicture.asset(
                                                ImageConstant
                                                    .imgAkariconschev13,
                                                fit: BoxFit.fill,
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
                                                "Notifications",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: ColorConstant.gray900,
                                                  fontSize: getFontSize(
                                                    16,
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
                                  16.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              child: Text(
                                "New activity",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.gray900,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
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
                                16.00,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child: ListView.builder(
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return Group761ItemWidget();
                              },
                            ),
                          ),
                          Container(
                            height: getVerticalSize(
                              409.00,
                            ),
                            width: getHorizontalSize(
                              327.00,
                            ),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                24.00,
                              ),
                              top: getVerticalSize(
                                31.00,
                              ),
                              right: getHorizontalSize(
                                24.00,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      bottom: getVerticalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
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
                                                "Applications",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray900,
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "See all",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                color: ColorConstant.gray700,
                                                fontSize: getFontSize(
                                                  13,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: getVerticalSize(
                                              14.00,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                height: getSize(
                                                  40.00,
                                                ),
                                                width: getSize(
                                                  40.00,
                                                ),
                                                margin: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    2.00,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    27.00,
                                                  ),
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.gray402,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      20.00,
                                                    ),
                                                  ),
                                                ),
                                                child: Card(
                                                  clipBehavior: Clip.antiAlias,
                                                  elevation: 0,
                                                  margin: EdgeInsets.all(0),
                                                  color: ColorConstant.gray402,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      getHorizontalSize(
                                                        20.00,
                                                      ),
                                                    ),
                                                  ),
                                                  child: Stack(
                                                    children: [
                                                      Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Image.asset(
                                                          ImageConstant
                                                              .imgImage79,
                                                          height: getSize(
                                                            40.00,
                                                          ),
                                                          width: getSize(
                                                            40.00,
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
                                                  top: getVerticalSize(
                                                    1.00,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    1.00,
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: getHorizontalSize(
                                                        275.00,
                                                      ),
                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  'Your application is submitted soccessfully to ',
                                                              style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray500,
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
                                                            TextSpan(
                                                              text: 'BMW',
                                                              style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                fontSize:
                                                                    getFontSize(
                                                                  14,
                                                                ),
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  '. You can check the status here.',
                                                              style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray500,
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
                                                          ],
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                          4.00,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          10.00,
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "1 hrs ago",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray500,
                                                          fontSize: getFontSize(
                                                            13,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
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
                                            top: getVerticalSize(
                                              16.00,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                height: getVerticalSize(
                                                  40.00,
                                                ),
                                                width: getHorizontalSize(
                                                  40.90,
                                                ),
                                                margin: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    2.00,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    27.00,
                                                  ),
                                                ),
                                                child: Stack(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Container(
                                                        height: getSize(
                                                          40.00,
                                                        ),
                                                        width: getSize(
                                                          40.00,
                                                        ),
                                                        margin: EdgeInsets.only(
                                                          right:
                                                              getHorizontalSize(
                                                            0.90,
                                                          ),
                                                        ),
                                                        decoration:
                                                            BoxDecoration(
                                                          color: ColorConstant
                                                              .gray402,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                            getHorizontalSize(
                                                              20.00,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          getHorizontalSize(
                                                            1222.50,
                                                          ),
                                                        ),
                                                        child: Image.asset(
                                                          ImageConstant
                                                              .imgImage96,
                                                          height:
                                                              getVerticalSize(
                                                            40.00,
                                                          ),
                                                          width:
                                                              getHorizontalSize(
                                                            40.90,
                                                          ),
                                                          fit: BoxFit.fill,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    0.50,
                                                  ),
                                                  bottom: getVerticalSize(
                                                    0.50,
                                                  ),
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: getHorizontalSize(
                                                        275.00,
                                                      ),
                                                      child: RichText(
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  'Booking.com ',
                                                              style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray900,
                                                                fontSize:
                                                                    getFontSize(
                                                                  14,
                                                                ),
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  'reviewing your applicatin, cover letter and portfolio. All the best!',
                                                              style: TextStyle(
                                                                color:
                                                                    ColorConstant
                                                                        .gray500,
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
                                                          ],
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        top: getVerticalSize(
                                                          4.00,
                                                        ),
                                                        right:
                                                            getHorizontalSize(
                                                          10.00,
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "3 hrs ago",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .gray500,
                                                          fontSize: getFontSize(
                                                            13,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                284.00,
                                              ),
                                              top: getVerticalSize(
                                                31.00,
                                              ),
                                            ),
                                            child: Text(
                                              "See all",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.right,
                                              style: TextStyle(
                                                color: ColorConstant.gray700,
                                                fontSize: getFontSize(
                                                  13,
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
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        10.00,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: getHorizontalSize(
                                              10.00,
                                            ),
                                          ),
                                          child: Text(
                                            "Interview",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.gray900,
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: getVerticalSize(
                                              16.00,
                                            ),
                                          ),
                                          child: ListView.builder(
                                            physics: BouncingScrollPhysics(),
                                            shrinkWrap: true,
                                            itemCount: 2,
                                            itemBuilder: (context, index) {
                                              return Group762ItemWidget();
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
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  8.00,
                                ),
                              ),
                              child: Container(
                                height: getVerticalSize(
                                  70.00,
                                ),
                                width: getHorizontalSize(
                                  375.00,
                                ),
                                child: SvgPicture.asset(
                                  ImageConstant.imgNav2,
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
          ),
        ),
      ),
    );
  }
}
