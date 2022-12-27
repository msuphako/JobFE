import 'package:hires/presentation/employer/search_person.dart';
import 'package:hires/presentation/search_result_2_screen/search_result_2_screen%20copy.dart';
import 'package:hires/presentation/searchfilterbottomsheet_page/widgets/dialog1.dart';
import 'package:hires/presentation/searchfilterbottomsheet_page/widgets/dialog2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

// ignore_for_file: must_be_immutable
class SearchfilterbottomsheetPage extends StatefulWidget {
  static String id = "SearchfilterbottomsheetPage";

  @override
  State<SearchfilterbottomsheetPage> createState() =>
      _SearchfilterbottomsheetPageState();
}

class _SearchfilterbottomsheetPageState
    extends State<SearchfilterbottomsheetPage> {
  RangeValues sliderRange = RangeValues(20, 80);
  List<String> jobTypesList = [
    "Any",
    "Full-Time",
    "Contract",
    "Part-Time",
  ];

  List<String> companyList = [
    "Google",
    "Meta",
    "Amazon",
    "Netflix",
    "Microsoft",
    "Apple"
  ];
  int jobTypeIndex = 0;

  bool checkBoxVal=false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      height: getVerticalSize(750),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(
                  top: getVerticalSize(
                    16.00,
                  ),
                ),
                child: Container(
                  width: size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: getHorizontalSize(19)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
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
                          child: SvgPicture.asset(
                            ImageConstant.imgAkariconscros5,
                            fit: BoxFit.fill,
                            color: isDark ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: getVerticalSize(
                            3.00,
                          ),
                        ),
                        child: Text(
                          "Filters",
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
                          right: getHorizontalSize(
                            5.00,
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            // Navigator.pop(context);
                            Navigator.pushNamed(context, SearchResultPerson.id);
                            
                          },
                          child: Text(
                            "Done",
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
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              19.00,
                            ),
                            top: getVerticalSize(
                              20.00,
                            ),
                            right: getHorizontalSize(
                              19.00,
                            ),
                          ),
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            320,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Search a job or position',
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
                                    20.00,
                                  ),
                                  child: isDark
                                      ? SvgPicture.asset(
                                          ImageConstant.imgSearch11,
                                          fit: BoxFit.contain,
                                          color: Colors.white,
                                        )
                                      : SvgPicture.asset(
                                          ImageConstant.imgSearch11,
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
                                  17.75,
                                ),
                              ),
                            ),
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                15.0,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              32.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Container(
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 60,
                                crossAxisSpacing: getHorizontalSize(8),
                                crossAxisCount: 3,
                              ),
                              physics: BouncingScrollPhysics(),
                              shrinkWrap: true,
                              itemCount: companyList.length,
                              itemBuilder: (context, index) {
                                return Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        8.00,
                                      ),
                                      right: getHorizontalSize(
                                        4.00,
                                      ),
                                      bottom: getVerticalSize(
                                        8.00,
                                      ),
                                    ),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: getHorizontalSize(10)),
                                      decoration: BoxDecoration(
                                        color:isDark?ColorConstant.darkbutton: ColorConstant.blue50,
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            97.00,
                                          ),
                                        ),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                8.00,
                                              ),
                                              bottom: getVerticalSize(
                                                8.00,
                                              ),
                                            ),
                                            child: Text(
                                              companyList[index],
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                               
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                companyList.removeAt(index);
                                              });
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                left: getHorizontalSize(
                                                  8.00,
                                                ),
                                                top: getVerticalSize(
                                                  15.00,
                                                ),
                                                bottom: getVerticalSize(
                                                  15.00,
                                                ),
                                              ),
                                              child: Container(
                                                height: getSize(
                                                  7.00,
                                                ),
                                                width: getSize(
                                                  7.00,
                                                ),
                                                child: SvgPicture.asset(
                                                  ImageConstant.imgVector9,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              20.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Text(
                            "Salary Range",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                15,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          margin: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              8.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'The average listing price is ',
                                  style: TextStyle(
                                    color: ColorConstant.gray500,
                                    fontSize: getFontSize(
                                      13,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                TextSpan(
                                  text: '${Constants.currency}84,000',
                                  style: TextStyle(
                                    color: ColorConstant.gray800,
                                    fontSize: getFontSize(
                                      13,
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
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: getVerticalSize(
                              33.00,
                            ),
                            left: getHorizontalSize(20),
                            right: getHorizontalSize(20)),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: getHorizontalSize(
                                325.00,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: getHorizontalSize(
                                        5.00,
                                      ),
                                    ),
                                    child: Text(
                                      "${Constants.currency}2,000",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          17,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      right: getHorizontalSize(
                                        5.00,
                                      ),
                                    ),
                                    child: Text(
                                      "${Constants.currency}120,000",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          17,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: getHorizontalSize(330),
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    5.00,
                                  ),
                                  top: getVerticalSize(
                                    16.00,
                                  ),
                                  right: getHorizontalSize(
                                    5.00,
                                  ),
                                ),
                                child: SliderTheme(
                                  data: SliderThemeData(
                                    trackShape: RoundedRectSliderTrackShape(),
                                    valueIndicatorColor: ColorConstant.blueA200,
                                    activeTrackColor: ColorConstant.blueA200,
                                    inactiveTrackColor: ColorConstant.gray300,
                                    thumbColor: ColorConstant.blueA200,
                                    thumbShape: RoundSliderThumbShape(),
                                  ),
                                  child: RangeSlider(
                                    labels: RangeLabels(
                                      sliderRange.start.round().toString(),
                                      sliderRange.end.round().toString(),
                                    ),
                                    values: sliderRange,
                                    divisions: 100,
                                    min: 0,
                                    max: 100,
                                    onChanged: (value) {
                                      setState(() {
                                        sliderRange = value;
                                      });
                                    },
                                  ),
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
                              20.00,
                            ),
                            top: getVerticalSize(
                              0.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                24.50,
                              ),
                              bottom: getVerticalSize(
                                24.50,
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Experience Level",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray500,
                                    fontSize: getFontSize(
                                      15,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
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
                                  ),
                                  child: GestureDetector(
                                    onTap: (){
                                       showDialog(context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              height: getVerticalSize(200),
              padding: EdgeInsets.symmetric(
                horizontal: getHorizontalSize(16),
                vertical: getVerticalSize(30)
              ),
              child: Center(
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  
                  itemBuilder:(context, index) {
                  return Dialog1();
                },),
              )
            ),
          
          );
        });
                                    },
                                    child: Text(
                                      "Entry Level, Mid Le....",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                    top: getVerticalSize(
                                      2.00,
                                    ),
                                    bottom: getVerticalSize(
                                      1.00,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blue50,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                  ),
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.blue50,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          10.00,
                                        ),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            4.00,
                                          ),
                                          top: getVerticalSize(
                                            4.00,
                                          ),
                                          right: getHorizontalSize(
                                            4.00,
                                          ),
                                          bottom: getVerticalSize(
                                            4.00,
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
                                            ImageConstant.imgHeroiconssolid,
                                            fit: BoxFit.fill,
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
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: getHorizontalSize(20)),
                        height: getVerticalSize(1),
                        decoration: BoxDecoration(
                            color:
                                isDark ? Colors.white : ColorConstant.gray100),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              20.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: getVerticalSize(
                                0.50,
                              ),
                              bottom: getVerticalSize(
                                0.50,
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Location",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: ColorConstant.gray500,
                                    fontSize: getFontSize(
                                      15,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
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
                                  ),
                                  child: GestureDetector(
                                    onTap:(){
                                      showDialog(context: context,
        builder: (BuildContext context) {
          return Dialog(
            child: Container(
              height: getVerticalSize(200),
              padding: EdgeInsets.symmetric(
                horizontal: getHorizontalSize(16),
                vertical: getVerticalSize(30)
              ),
              child: Center(
                child: ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  
                  itemBuilder:(context, index) {
                  return Dialog2();
                },),
              )
            ),
          
          );
        });               
                                    },
                                    child: Text(
                                      "Los Angels, San Jose, San F....",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          14,
                                        ),
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                  margin: EdgeInsets.only(
                                    left: getHorizontalSize(
                                      20.00,
                                    ),
                                    top: getVerticalSize(
                                      2.00,
                                    ),
                                    bottom: getVerticalSize(
                                      1.00,
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blue50,
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        10.00,
                                      ),
                                    ),
                                  ),
                                  child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: ColorConstant.blue50,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          10.00,
                                        ),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            4.00,
                                          ),
                                          top: getVerticalSize(
                                            4.00,
                                          ),
                                          right: getHorizontalSize(
                                            4.00,
                                          ),
                                          bottom: getVerticalSize(
                                            4.00,
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
                                            ImageConstant.imgHeroiconssolid,
                                            fit: BoxFit.fill,
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
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              50.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Text(
                            "Job Types",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray500,
                              fontSize: getFontSize(
                                15,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              16.00,
                            ),
                            bottom: getVerticalSize(
                              42.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(40),
                            child: ListView.builder(
                                itemCount: jobTypesList.length,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          10.00,
                                        ),
                                        right: getHorizontalSize(10)),
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          jobTypeIndex = index;
                                        });
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: getVerticalSize(
                                          37.00,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: getHorizontalSize(16)),
                                        decoration: BoxDecoration(
                                          color: jobTypeIndex == index
                                              ? ColorConstant.blueA200
                                              : isDark
                                                  ? ColorConstant.darkbutton
                                                  : ColorConstant.gray300,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              97.00,
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          jobTypesList[index],
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: jobTypeIndex == index
                                                ? Colors.white
                                                : isDark
                                                    ? ColorConstant.gray100
                                                    : ColorConstant.gray700,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          )),
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
