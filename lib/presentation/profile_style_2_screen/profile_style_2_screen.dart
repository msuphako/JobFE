import '../profile_style_2_screen/widgets/group541_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

class ProfileStyle2Screen extends StatelessWidget {
  static String id="ProfileStyle2Screen";
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
                          16.00,
                        ),
                        bottom: getVerticalSize(
                          32.87,
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
                                    24.00,
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                        ImageConstant.imgAkariconschev6,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          3.00,
                                        ),
                                        bottom: getVerticalSize(
                                          3.00,
                                        ),
                                      ),
                                      child: Text(
                                        "Edit",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: ColorConstant.gray400,
                                          fontSize: getFontSize(
                                            14,
                                          ),
                                          fontFamily: 'Circular Std',
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: getSize(
                              104.00,
                            ),
                            width: getSize(
                              104.00,
                            ),
                            margin: EdgeInsets.only(
                              left: getHorizontalSize(
                                49.00,
                              ),
                              top: getVerticalSize(
                                8.00,
                              ),
                              right: getHorizontalSize(
                                49.00,
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.indigo50,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  52.00,
                                ),
                              ),
                            ),
                            child: Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: ColorConstant.indigo50,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    52.00,
                                  ),
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getSize(
                                          52.00,
                                        ),
                                      ),
                                      child: Image.asset(
                                        ImageConstant.imgChristinawocin1,
                                        height: getSize(
                                          104.00,
                                        ),
                                        width: getSize(
                                          104.00,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: getSize(
                                        104.00,
                                      ),
                                      width: getSize(
                                        104.00,
                                      ),
                                      child: SvgPicture.asset(
                                        ImageConstant.imgMaskgroup4,
                                        fit: BoxFit.fill,
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
                                49.00,
                              ),
                              top: getVerticalSize(
                                12.00,
                              ),
                              right: getHorizontalSize(
                                49.00,
                              ),
                            ),
                            child: Text(
                              "Haley Jessica",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: ColorConstant.gray900,
                                fontSize: getFontSize(
                                  20,
                                ),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                49.00,
                              ),
                              top: getVerticalSize(
                                6.00,
                              ),
                              right: getHorizontalSize(
                                49.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "UX Designer",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: ColorConstant.gray500,
                                    fontSize: getFontSize(
                                      12,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      4.00,
                                    ),
                                    top: getVerticalSize(
                                      4.00,
                                    ),
                                    bottom: getVerticalSize(
                                      3.00,
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
                                      ImageConstant.imgIcroundverifi1,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                49.00,
                              ),
                              top: getVerticalSize(
                                40.00,
                              ),
                              right: getHorizontalSize(
                                48.00,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          15.00,
                                        ),
                                        right: getHorizontalSize(
                                          14.00,
                                        ),
                                      ),
                                      child: Text(
                                        "27",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorConstant.gray900,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'Circular Std',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            6.00,
                                          ),
                                        ),
                                        child: Text(
                                          "Applied",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(
                                              12,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          21.00,
                                        ),
                                        right: getHorizontalSize(
                                          21.00,
                                        ),
                                      ),
                                      child: Text(
                                        "19",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorConstant.gray900,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'Circular Std',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            6.00,
                                          ),
                                        ),
                                        child: Text(
                                          "Reviewed",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(
                                              12,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          19.00,
                                        ),
                                        right: getHorizontalSize(
                                          19.00,
                                        ),
                                      ),
                                      child: Text(
                                        "14",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: ColorConstant.gray900,
                                          fontSize: getFontSize(
                                            16,
                                          ),
                                          fontFamily: 'Circular Std',
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            6.00,
                                          ),
                                        ),
                                        child: Text(
                                          "Interview",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(
                                              12,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  40.00,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              26.00,
                                            ),
                                            bottom: getVerticalSize(
                                              1.00,
                                            ),
                                          ),
                                          child: Text(
                                            "Resume",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
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
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: getVerticalSize(
                                              1.00,
                                            ),
                                            right: getHorizontalSize(
                                              24.00,
                                            ),
                                          ),
                                          child: Text(
                                            "Make a resume",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: ColorConstant.teal600,
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
                                  Container(
                                    width: double.infinity,
                                    margin: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        24.00,
                                      ),
                                      top: getVerticalSize(
                                        11.00,
                                      ),
                                      right: getHorizontalSize(
                                        24.00,
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          20.00,
                                        ),
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: ColorConstant.black9000a,
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
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                8.00,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      24.00,
                                                    ),
                                                  ),
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    height: getVerticalSize(
                                                      14.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      32.00,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .blueA200,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          6.00,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Text(
                                                      "CV",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        fontSize: getFontSize(
                                                          8,
                                                        ),
                                                        fontFamily:
                                                            'Circular Std',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "Haley Jessica",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray900,
                                                    fontSize: getFontSize(
                                                      11,
                                                    ),
                                                    fontFamily: 'Circular Std',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    right: getHorizontalSize(
                                                      26.00,
                                                    ),
                                                  ),
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    height: getVerticalSize(
                                                      14.00,
                                                    ),
                                                    width: getHorizontalSize(
                                                      35.00,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .deepPurple500,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          6.00,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Text(
                                                      "PDF",
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .whiteA700,
                                                        fontSize: getFontSize(
                                                          8,
                                                        ),
                                                        fontFamily:
                                                            'Circular Std',
                                                        fontWeight:
                                                            FontWeight.w500,
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
                                              24.00,
                                            ),
                                            top: getVerticalSize(
                                              2.00,
                                            ),
                                            right: getHorizontalSize(
                                              24.00,
                                            ),
                                          ),
                                          child: Text(
                                            "UX Designer",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: ColorConstant.gray500,
                                              fontSize: getFontSize(
                                                8,
                                              ),
                                              fontFamily: 'Circular Std',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            width: getHorizontalSize(
                                              279.00,
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
                                              bottom: getVerticalSize(
                                                10.00,
                                              ),
                                            ),
                                            child: Text(
                                              "Creative UX Designer with 6+ years of experience in optimizing user experience through innovative solutions and dynamic interface designs. Successful in enhancing user engag-ement for well-known brands, providing a compelling user experience to improve brand loyalty and customer retention.  ",
                                              maxLines: null,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.gray500,
                                                fontSize: getFontSize(
                                                  7,
                                                ),
                                                fontFamily: 'Circular Std',
                                                fontWeight: FontWeight.w400,
                                              ),
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
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  31.00,
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              24.00,
                                            ),
                                            bottom: getVerticalSize(
                                              1.00,
                                            ),
                                          ),
                                          child: Text(
                                            "Portfolio",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.start,
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
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: getHorizontalSize(
                                              25.00,
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
                                                "See all",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: ColorConstant.gray500,
                                                  fontSize: getFontSize(
                                                    13,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text(
                                                "See all",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.right,
                                                style: TextStyle(
                                                  color: ColorConstant.gray500,
                                                  fontSize: getFontSize(
                                                    13,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w400,
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
                                        11.00,
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
                                        return Group541ItemWidget();
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
