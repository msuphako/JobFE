import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:hires/presentation/employer/search_person.dart';
import 'package:hires/presentation/search_option_3_screen/searchperson.dart';
import 'package:hires/presentation/search_result_2_screen/search_result_2_screen%20copy.dart';
import 'package:hires/presentation/search_result_2_screen/search_result_2_screen.dart';
import 'package:hires/presentation/searchfilterbottomsheet_page/widgets/dialog1.dart';
import 'package:hires/presentation/searchfilterbottomsheet_page/widgets/dialog2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';

import '../search_option_3_screen/search_option_3_screen.dart';

// ignore_for_file: must_be_immutable
class SearchPerfilterbottomsheetPage extends StatefulWidget {
  static String id = "SearchPerfilterbottomsheetPage";

  @override
  State<SearchPerfilterbottomsheetPage> createState() =>
      _SearchPerfilterbottomsheetPageState();
}

class _SearchPerfilterbottomsheetPageState
    extends State<SearchPerfilterbottomsheetPage> {
  RangeValues sliderRange = RangeValues(20, 80);
  List<String> genderList = ["ทั้งหมด", "ชาย", "หญิง"];
  int GenderIndex = 0;

  List<String> jobTypesList = [
    "ทั้งหมด",
    "งานประจำ",
    "งานพาทไทม์",
    "งานชั่วคราว",
    "ทำงานที่บ้าน",
  ];

  var provinceList = [
    'ทั้งหมด',
    'กระบี่',
    'กรุงเทพมหานคร',
    'กาญจนบุรี',
    'กาฬสินธุ์',
    'กำแพงเพชร',
    'ขอนแก่น',
    'จันทบุรี',
    'ฉะเชิงเทรา',
    'ชลบุรี',
    'ชัยนาท',
    'ชัยภูมิ',
    'ชุมพร',
    'เชียงราย',
    'เชียงใหม่',
    'ตรัง',
    'ตราด',
    'ตาก',
    'นครนายก',
    'นครปฐม',
    'นครพนม',
    'นครราชสีมา',
    'นครศรีธรรมราช',
    'นครสวรรค์',
    'นนทบุรี',
    'นราธิวาส',
    'น่าน',
    'บึงกาฬ',
    'บุรีรัมย์',
    'ปทุมธานี',
    'ประจวบคีรีขันธ์',
    'ปราจีนบุรี',
    'ปัตตานี',
    'พระนครศรีอยุธยา',
    'พะเยา',
    'พังงา',
    'พัทลุง',
    'พิจิตร',
    'พิษณุโลก',
    'เพชรบุรี',
    'เพชรบูรณ์',
    'แพร่',
    'ภูเก็ต',
    'มหาสารคาม',
    'มุกดาหาร',
    'แม่ฮ่องสอน',
    'ยโสธร',
    'ยะลา',
    'ร้อยเอ็ด',
    'ระนอง',
    'ระยอง',
    'ราชบุรี',
    'ลพบุรี',
    'ลำปาง',
    'ลำพูน',
    'เลย',
    'ศรีสะเกษ',
    'สกลนคร',
    'สงขลา',
    'สตูล',
    'สมุทรปราการ',
    'สมุทรสงคราม',
    'สมุทรสาคร',
    'สระแก้ว',
    'สระบุรี',
    'สิงห์บุรี',
    'สุโขทัย',
    'สุพรรณบุรี',
    'สุราษฎร์ธานี',
    'สุรินทร์',
    'หนองคาย',
    'หนองบัวลำภู',
    'อ่างทอง',
    'อำนาจเจริญ',
    'อุดรธานี',
    'อุตรดิตถ์',
    'อุทัยธานี',
    'อุบลราชธานี'
  ];
  String province = "ทั้งหมด";
  late List<String> dataaa = ["ทั้งหมด"];
  RangeValues _currentRangeValues = const RangeValues(60, 80);

  int jobTypeIndex = 0;

  bool checkBoxVal = false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      height: getVerticalSize(720),
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(bottom: 50),
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
                          "ค้นหาประวัติ",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray800,
                            fontSize: getFontSize(
                              20,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
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
                          },
                          child: Text(
                            "",
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
                              30.00,
                            ),
                            right: getHorizontalSize(
                              19.00,
                            ),
                          ),
                          height: getVerticalSize(
                            48.00,
                          ),
                          width: getHorizontalSize(
                            350,
                          ),
                          child: TextFormField(
                            onTap: () {
                              // Navigator.pop(context);
                              Navigator.pushNamed(context, SearchPerScreen.id);
                            },
                            decoration: InputDecoration(
                              hintText: 'ค้นหาจากชื่อ ',
                              hintStyle: TextStyle(fontSize: 18),
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
                                      ? Icon(
                                          Icons.search,
                                          color: Colors.white,
                                        )
                                      : Icon(
                                          Icons.search,
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
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              10.00,
                            ),
                          ),
                          child: Text(
                            "ประเภทงาน",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray700,
                              fontSize: getFontSize(
                                20,
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
                                10.00,
                              ),
                              bottom: getVerticalSize(
                                10.00,
                              ),
                              left: 20,
                              right: 20),
                          child: Container(
                            height: getVerticalSize(40),
                            child: ListView.builder(
                                itemCount: jobTypesList.length,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      GestureDetector(
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
                                              horizontal:
                                                  getHorizontalSize(16)),
                                          decoration: BoxDecoration(
                                            color: jobTypeIndex == index
                                                ? ColorConstant.teal600
                                                : isDark
                                                    ? ColorConstant.darkbutton
                                                    : ColorConstant.gray300,
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
                                                16,
                                              ),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                          )),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              10.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Text(
                            "เลือกหมวดหมู่งาน",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray700,
                              fontSize: getFontSize(
                                20,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      FutureBuilder<QuerySnapshot>(
                          future: FirebaseFirestore.instance
                              .collection('joblist')
                              .get(),
                          builder: (context, AsyncSnapshot snapshot) {
                            if (snapshot.hasError) {
                              return Text('ไม่พบข้อมูล');
                            }

                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return Center();
                            }
                            var resumedata = snapshot.data!.docs;
                            var data =
                                resumedata[0].data() as Map<String, dynamic>;
                            List<String> jobdata =
                                List<String>.from(data['name'] as List);

                            // print(jobdata);
                            return Padding(
                              padding: EdgeInsets.only(
                                left: getHorizontalSize(
                                  20.00,
                                ),
                                top: getVerticalSize(
                                  10.00,
                                ),
                                right: getHorizontalSize(
                                  20.00,
                                ),
                              ),
                              child: DropdownSearch<String>.multiSelection(
                                popupProps: PopupPropsMultiSelection.menu(
                                  showSelectedItems: true,
                                ),
                                items: jobdata,
                                dropdownDecoratorProps: DropDownDecoratorProps(
                                  dropdownSearchDecoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      fontSize: 18,
                                    ),
                                    // labelText: "เลือกงาน",
                                    contentPadding: EdgeInsets.all(10),
                                    hintText: "ทั้งหมด",
                                    labelStyle: TextStyle(
                                      fontSize: 18,
                                    ),
                                    floatingLabelStyle: TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                onChanged: (value) {
                                  dataaa = value;
                                },
                                validator: (item) {
                                  if (item == null)
                                    return "Required field";
                                  else if (item == "Brazil")
                                    return "Invalid item";
                                  else
                                    return null;
                                },
                                // selectedItem: "Brazil",
                              ),
                            );
                          }),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              40.00,
                            ),
                            bottom: getVerticalSize(
                              10.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "เลือกจังหวัด",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.gray700,
                                  fontSize: getFontSize(
                                    20,
                                  ),
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    13.00,
                                  ),
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return Dialog(
                                            child: Container(
                                                height: getVerticalSize(
                                                    size.height),
                                                width: getHorizontalSize(40),
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        getHorizontalSize(16),
                                                    vertical:
                                                        getVerticalSize(10)),
                                                child: Center(
                                                  child: ListView.builder(
                                                    itemCount:
                                                        provinceList.length,
                                                    shrinkWrap: true,
                                                    itemBuilder:
                                                        (context, index) {
                                                      // return ProvinceDialog(
                                                      //     provinceList[
                                                      //         index]);
                                                      return Padding(
                                                        padding: EdgeInsets.symmetric(
                                                            vertical:
                                                                getVerticalSize(
                                                                    10),
                                                            horizontal:
                                                                getHorizontalSize(
                                                                    4)),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              province =
                                                                  provinceList[
                                                                      index];
                                                            });
                                                            Navigator.of(
                                                                    context,
                                                                    rootNavigator:
                                                                        true)
                                                                .pop();
                                                          },
                                                          child: Container(
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: ColorConstant
                                                                        .whiteA700)),
                                                            child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                Text(
                                                                  provinceList[
                                                                      index],
                                                                  style:
                                                                      TextStyle(
                                                                    color: provinceList[index] ==
                                                                            "ทั้งหมด"
                                                                        ? ColorConstant
                                                                            .blueA200
                                                                        : ColorConstant
                                                                            .gray700,
                                                                    fontSize:
                                                                        getFontSize(
                                                                      16,
                                                                    ),
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                )),
                                          );
                                        });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    width: 220,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: ColorConstant.teal600)),
                                    child: Text(
                                      province == ""
                                          ? jobTypesList[0]
                                          : province,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                        fontSize: getFontSize(
                                          18,
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
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              20.00,
                            ),
                            top: getVerticalSize(
                              10.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Text(
                            "ระบุช่วงอายุ : ${_currentRangeValues.start.round()} - ${_currentRangeValues.end.round()}",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                20,
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
                              10.00,
                            ),
                            left: 20,
                            right: 20),
                        child: RangeSlider(
                          values: _currentRangeValues,
                          max: 80,
                          min: 60,
                          divisions: 4,
                          labels: RangeLabels(
                            _currentRangeValues.start.round().toString(),
                            _currentRangeValues.end.round().toString(),
                          ),
                          onChanged: (RangeValues values) {
                            setState(() {
                              _currentRangeValues = values;
                            });
                            // print(_currentRangeValues.start.toString());
                          },
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
                              10.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Text(
                            "ระบุเพศ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                20,
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
                              10.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(40),
                            child: ListView.builder(
                                itemCount: genderList.length,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            GenderIndex = index;
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: getVerticalSize(
                                            37.00,
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  getHorizontalSize(16)),
                                          decoration: BoxDecoration(
                                            color: GenderIndex == index
                                                ? ColorConstant.blueA200
                                                : isDark
                                                    ? ColorConstant.darkbutton
                                                    : ColorConstant.gray300,
                                          ),
                                          child: Text(
                                            genderList[index],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              color: GenderIndex == index
                                                  ? Colors.white
                                                  : isDark
                                                      ? ColorConstant.gray100
                                                      : ColorConstant.gray700,
                                              fontSize: getFontSize(
                                                18,
                                              ),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                }),
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 40, bottom: 20),
                        child: Container(
                          width: 120,
                          height: 40,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: ColorConstant.teal600,
                            ),
                            onPressed: () {
                              if (dataaa.isEmpty) dataaa = ["ทั้งหมด"];
                              var searchdata = {
                                'jobtype': jobTypesList[jobTypeIndex],
                                'jobdetail': dataaa,
                                'province': province,
                                "agestart": num.parse(
                                    _currentRangeValues.start.toString()),
                                "ageend": num.parse(
                                    _currentRangeValues.end.toString()),
                                "Gender": genderList[GenderIndex],
                              };
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      SearchResultPerson(searchdata)));
                            },
                            child: Text(
                              "ค้นหา",
                              style: TextStyle(fontSize: 20),
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
    );
  }
}
