import 'package:firebase_auth/firebase_auth.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/employer/search_person.dart';
import 'package:hires/presentation/employer/widget/province.dart';
import 'package:hires/presentation/search_result_2_screen/search_result_2_screen%20copy.dart';
import 'package:hires/presentation/searchfilterbottomsheet_page/widgets/dialog1.dart';
import 'package:hires/presentation/searchfilterbottomsheet_page/widgets/dialog2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:dropdown_search/dropdown_search.dart';

// ignore_for_file: must_be_immutable
class JobPostForm extends StatefulWidget {
  static String id = "JobPostForm";

  @override
  State<JobPostForm> createState() => _JobPostFormState();
}

class _JobPostFormState extends State<JobPostForm> {
  RangeValues sliderRange = RangeValues(20, 80);
  List<String> jobTypesList = [
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
  List<String> provinceList = [
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
  final user = FirebaseAuth.instance.currentUser!;
  var job = Job();
  int jobTypeIndex = 0;
  String province = "";
  bool checkBoxVal = false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    final _titleController = TextEditingController();
    final _descriptController = TextEditingController();
    return Container(
      height: getVerticalSize(size.height),
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
                          "ประกาศงาน",
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
                            Navigator.pop(context);
                          },
                          child: Text(
                            "ปิด",
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
                            "หัวเรื่อง",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _titleController,
                          maxLength: 40,
                          decoration: InputDecoration(
                            hintText: '',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                              5.00,
                            ),
                            right: getHorizontalSize(
                              20.00,
                            ),
                          ),
                          child: Text(
                            "รายละเอียดงาน",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: _descriptController,
                          minLines: 5,
                          maxLines: 7,
                          decoration: InputDecoration(
                            hintText: '',
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
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
                        alignment: Alignment.centerLeft,
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
                            "ประเภทงาน",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray800,
                              fontSize: getFontSize(
                                18,
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
                                itemCount: jobTypesList.length,
                                scrollDirection: Axis.horizontal,
                                shrinkWrap: true,
                                itemBuilder: (context, index) {
                                  return Row(
                                    children: [
                                      Padding(
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
                                                horizontal:
                                                    getHorizontalSize(16)),
                                            decoration: BoxDecoration(
                                              color: jobTypeIndex == index
                                                  ? ColorConstant.blueA200
                                                  : isDark
                                                      ? ColorConstant.darkbutton
                                                      : ColorConstant.gray300,
                                              borderRadius:
                                                  BorderRadius.circular(
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
                                      ),
                                    ],
                                  );
                                }),
                          )),
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
                                    color: ColorConstant.gray800,
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
                                                          getVerticalSize(30)),
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
                                                                      14),
                                                              horizontal:
                                                                  getHorizontalSize(
                                                                      4)),
                                                          child:
                                                              GestureDetector(
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
                                                        );
                                                      },
                                                    ),
                                                  )),
                                            );
                                          });
                                    },
                                    child: Text(
                                      province == ""
                                          ? "กรุณาเลือกจังหวัด..."
                                          : province,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
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
                      ),
                      DropdownSearch<String>(
                        popupProps: PopupProps.menu(
                          showSelectedItems: true,
                          disabledItemFn: (String s) => s.startsWith('I'),
                        ),
                        items: [
                          "Brazil",
                          "Italia (Disabled)",
                          "Tunisia",
                          'Canada'
                        ],
                        dropdownDecoratorProps: DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(
                            labelText: "Menu mode",
                            hintText: "country in menu mode",
                          ),
                        ),
                        onChanged: print,
                        selectedItem: "Brazil",
                      ),
                      DropdownSearch<String>.multiSelection(
                        items: [
                          "Brazil",
                          "Italia (Disabled)",
                          "Tunisia",
                          'Canada'
                        ],
                        popupProps: PopupPropsMultiSelection.menu(
                          showSelectedItems: true,
                          disabledItemFn: (String s) => s.startsWith('I'),
                        ),
                        onChanged: print,
                        selectedItems: ["Brazil"],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: ColorConstant.teal600,
                          ),
                          onPressed: () {
                            // print(jobTypesList[jobTypeIndex]);

                            job.CreateJob(
                                id: user.uid,
                                title: _titleController.text,
                                description: _descriptController.text,
                                jobtype: jobTypesList[jobTypeIndex],
                                province: province);
                          },
                          child: Text(
                            "บันทึก",
                            style: TextStyle(fontSize: 18),
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