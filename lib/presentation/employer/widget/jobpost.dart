import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/employer/search_person.dart';
import 'package:hires/presentation/employer/showjobpost.dart';
import 'package:hires/presentation/employer/widget/province.dart';
import 'package:hires/presentation/search_result_2_screen/search_result_2_screen%20copy.dart';
import 'package:hires/presentation/searchfilterbottomsheet_page/widgets/dialog1.dart';
import 'package:hires/presentation/searchfilterbottomsheet_page/widgets/dialog2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

// ignore_for_file: must_be_immutable
class JobPostForm extends StatefulWidget {
  static String id = "JobPostForm";

  @override
  State<JobPostForm> createState() => _JobPostFormState();
}

class _JobPostFormState extends State<JobPostForm> {
  RangeValues sliderRange = RangeValues(20, 80);
  List<String> genderList = ["ไม่ระบุ", "ชาย", "หญิง"];
  List<String> jobTypesList = [
    "งานประจำ",
    "งานพาทไทม์",
    "งานชั่วคราว",
    "ทำงานที่บ้าน",
  ];

  List<String> payList = [
    "ไม่ระบุ",
    "ระบุ",
    "ตามตกลง",
  ];
  var JobList = [
    'พนักงานทั่วไป',
    'พนักงานขาย',
    'แม่บ้าน',
    'ขับรถ',
    'พนักงานรักษาความปลอดภัย(รปภ)',
    'พนักงานประจำร้านสาขา',
    'พนักงานฝ่ายผลิต',
  ];
  var provinceList = [
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
  final _formKey = GlobalKey<FormState>();

  final _titleController = TextEditingController();
  final _descriptController = TextEditingController();
  final _SalaryController = TextEditingController();
  int jobTypeIndex = 0;
  int GenderIndex = 0;
  int payTypeIndex = 0;

  String province = "";
  String salary = "ไม่ระบุ";
  bool checkBoxVal = false;
  late List<String> dataaa;

  RangeValues _currentRangeValues = const RangeValues(60, 80);

  bool Isshow = false;
  DateTime startdate = DateTime.now().subtract(const Duration(days: 0));
  DateTime enddate = DateTime.now().add(const Duration(days: 7));
  TextEditingController _textFieldController = TextEditingController();

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    setState(() {
      if (args.value is PickerDateRange) {
        startdate = args.value.startDate;
        enddate = args.value.endDate ?? args.value.startDate;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
        child: Container(
          width: getHorizontalSize(330),
          height: getVerticalSize(50),
          child: FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(getHorizontalSize(12))),
              backgroundColor: ColorConstant.teal600,
              foregroundColor: ColorConstant.whiteA700,
              extendedTextStyle: TextStyle(
                color: ColorConstant.gray50,
                fontSize: getFontSize(
                  18,
                ),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700,
                letterSpacing: 0.07,
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  job.CreateJob(
                      id: user.uid,
                      title: _titleController.text,
                      detail: _descriptController.text,
                      description: dataaa,
                      jobtype: jobTypesList[jobTypeIndex],
                      salary: salary,
                      startdate: startdate,
                      enddate: enddate,
                      Requirements: {
                        "Age":
                            "${num.parse(_currentRangeValues.start.toString()).toString()}-${num.parse(_currentRangeValues.end.toString()).toString()}",
                        "Gender": genderList[GenderIndex],
                      });
                  Navigator.pop(context);
                  Navigator.pushNamed(context, ShowJobPost.id);
                }
                // print(jobTypesList[jobTypeIndex]);
                // print(enddate.millisecondsSinceEpoch);
                // print(salary);
              },
              // onPressed: () {
              //   Navigator.pushNamed(context, ApplyScreen.id);
              // },
              label: Text('โพสประกาศ')),
        ),
      ),
      body: Container(
        height: getVerticalSize(690),
        color: ColorConstant.black90005,
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    top: getVerticalSize(
                      40.00,
                    ),
                    bottom: getVerticalSize(
                      16.00,
                    ),
                  ),
                  width: size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: getHorizontalSize(19)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
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
                                20,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: ColorConstant.teal600),
                        ),
                      ),
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
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Card(
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
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
                                      "หัวเรื่อง",
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
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: _titleController,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'กรุณากรอกหัวข้อของงาน';
                                      }
                                      return null;
                                    },
                                    maxLength: 40,
                                    decoration: InputDecoration(
                                      hintText: '',
                                      counterText: '',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
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
                                          20,
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
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return 'กรุณากรอกหัวรายละเอียดของงาน';
                                      }
                                      return null;
                                    },
                                    minLines: 5,
                                    maxLines: 7,
                                    decoration: InputDecoration(
                                      hintText: '',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10.0)),
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
                                                            getHorizontalSize(
                                                                16)),
                                                    decoration: BoxDecoration(
                                                      color: jobTypeIndex ==
                                                              index
                                                          ? ColorConstant
                                                              .blueA200
                                                          : isDark
                                                              ? ColorConstant
                                                                  .darkbutton
                                                              : ColorConstant
                                                                  .gray300,
                                                    ),
                                                    child: Text(
                                                      jobTypesList[index],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: jobTypeIndex ==
                                                                index
                                                            ? Colors.white
                                                            : isDark
                                                                ? ColorConstant
                                                                    .gray100
                                                                : ColorConstant
                                                                    .gray700,
                                                        fontSize: getFontSize(
                                                          16,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          }),
                                    )),
                                Align(
                                  alignment: Alignment.center,
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
                                      "เลือกหมวดหมู่งาน",
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
                                // Padding(
                                //   padding: const EdgeInsets.all(8.0),
                                //   child: DropdownSearch<String>.multiSelection(
                                //     items: companyList,
                                //     popupProps: PopupPropsMultiSelection.menu(
                                //       showSelectedItems: true,
                                //       disabledItemFn: (String s) => s.startsWith('I'),
                                //     ),
                                //     onChanged: ((value) {
                                //       print(value);
                                //     }),
                                //   ),
                                // ),

                                StreamBuilder<QuerySnapshot>(
                                    stream:
                                        db.collection('joblist').snapshots(),
                                    builder: (context, AsyncSnapshot snapshot) {
                                      if (snapshot.hasError) {
                                        return Text('ไม่พบข้อมูล');
                                      }

                                      if (snapshot.connectionState ==
                                          ConnectionState.waiting) {
                                        return Center();
                                      }
                                      var resumedata = snapshot.data!.docs;
                                      var data = resumedata[0].data()
                                          as Map<String, dynamic>;
                                      List<String> jobdata = List<String>.from(
                                          data['name'] as List);
                                      // print(jobdata);
                                      return Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: DropdownSearch<
                                            String>.multiSelection(
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'กรุณาเลือกหมวดหมู่งานที่เกี่ยวข้อง';
                                            }
                                            return null;
                                          },
                                          popupProps:
                                              PopupPropsMultiSelection.menu(
                                            showSelectedItems: true,
                                            disabledItemFn: (String s) =>
                                                s.startsWith('I'),
                                          ),
                                          items: jobdata,
                                          dropdownDecoratorProps:
                                              DropDownDecoratorProps(
                                            dropdownSearchDecoration:
                                                InputDecoration(
                                              // labelStyle: TextStyle(fontSize: 20,color: ColorConstant.red300),
                                              // labelText: "เลือกงาน",
                                              hintText: "เลือกงาน",
                                            ),
                                          ),
                                          onChanged: (value) {
                                            dataaa = value;
                                          },
                                          // selectedItem: "Brazil",
                                        ),
                                      );
                                    }),
                                const SizedBox(width: 50),
                                GestureDetector(
                                  onTap: () {
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text('เพิ่มหมวดหมู่งาน'),
                                            actions: [
                                              GestureDetector(
                                                onTap: () {
                                                  // // changenewpass();
                                                  FirebaseFirestore.instance
                                                      .collection("joblist")
                                                      .doc('jobid')
                                                      .set({
                                                    "name":
                                                        FieldValue.arrayUnion([
                                                      _textFieldController.text
                                                    ])
                                                  }, SetOptions(merge: true));

                                                  Navigator.pop(context);
                                                },
                                                child: Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        18.00,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        10.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        18.00,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      height: getVerticalSize(
                                                        56.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        327.00,
                                                      ),
                                                      decoration: BoxDecoration(
                                                        color: ColorConstant
                                                            .blueA200,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                          getHorizontalSize(
                                                            16.00,
                                                          ),
                                                        ),
                                                      ),
                                                      child: Text(
                                                        "เพิ่ม",
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                          color: ColorConstant
                                                              .whiteA700,
                                                          fontSize: getFontSize(
                                                            16,
                                                          ),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                            content: TextField(
                                              controller: _textFieldController,
                                              decoration: InputDecoration(
                                                  hintText: "กรอกข้อมูล"),
                                            ),
                                          );
                                        });
                                  },
                                  child: Container(
                                    padding: EdgeInsets.all(10),
                                    decoration:
                                        BoxDecoration(color: Colors.blue),
                                    child: Text(
                                      'เพิ่มหมวดหมู่งาน',
                                      style: TextStyle(
                                          fontSize: 16, color: Colors.white),
                                    ),
                                  ),
                                ),
                                // Align(
                                //   alignment: Alignment.center,
                                //   child: Padding(
                                //     padding: EdgeInsets.only(
                                //       left: getHorizontalSize(
                                //         20.00,
                                //       ),
                                //       top: getVerticalSize(
                                //         10.00,
                                //       ),
                                //       bottom: getVerticalSize(
                                //         10.00,
                                //       ),
                                //       right: getHorizontalSize(
                                //         20.00,
                                //       ),
                                //     ),
                                //     child: Padding(
                                //       padding: EdgeInsets.only(
                                //         top: getVerticalSize(
                                //           0.50,
                                //         ),
                                //         bottom: getVerticalSize(
                                //           0.50,
                                //         ),
                                //       ),
                                //       child: Row(
                                //         crossAxisAlignment:
                                //             CrossAxisAlignment.center,
                                //         mainAxisSize: MainAxisSize.min,
                                //         children: [
                                //           Text(
                                //             "เลือกจังหวัด",
                                //             overflow: TextOverflow.ellipsis,
                                //             textAlign: TextAlign.start,
                                //             style: TextStyle(
                                //               color: ColorConstant.gray800,
                                //               fontSize: getFontSize(
                                //                 20,
                                //               ),
                                //               fontFamily: 'Poppins',
                                //               fontWeight: FontWeight.w500,
                                //             ),
                                //           ),
                                //           Padding(
                                //             padding: EdgeInsets.only(
                                //               left: getHorizontalSize(
                                //                 24.00,
                                //               ),
                                //               top: getVerticalSize(
                                //                 2.00,
                                //               ),
                                //             ),
                                //             child: Container(
                                //               alignment: Alignment.center,
                                //               width: 200,
                                //               decoration: BoxDecoration(
                                //                   border: Border.all(
                                //                       color: ColorConstant
                                //                           .blueA200)),
                                //               child: GestureDetector(
                                //                 onTap: () {
                                //                   showDialog(
                                //                       context: context,
                                //                       builder:
                                //                           (BuildContext context) {
                                //                         return Dialog(
                                //                           child: Container(
                                //                               height:
                                //                                   getVerticalSize(
                                //                                       size
                                //                                           .height),
                                //                               width:
                                //                                   getHorizontalSize(
                                //                                       40),
                                //                               padding: EdgeInsets.symmetric(
                                //                                   horizontal:
                                //                                       getHorizontalSize(
                                //                                           16),
                                //                                   vertical:
                                //                                       getVerticalSize(
                                //                                           30)),
                                //                               child: Center(
                                //                                 child: ListView
                                //                                     .builder(
                                //                                   itemCount:
                                //                                       provinceList
                                //                                           .length,
                                //                                   shrinkWrap:
                                //                                       true,
                                //                                   itemBuilder:
                                //                                       (context,
                                //                                           index) {
                                //                                     // return ProvinceDialog(
                                //                                     //     provinceList[
                                //                                     //         index]);
                                //                                     return Padding(
                                //                                       padding: EdgeInsets.symmetric(
                                //                                           vertical:
                                //                                               getVerticalSize(
                                //                                                   14),
                                //                                           horizontal:
                                //                                               getHorizontalSize(4)),
                                //                                       child:
                                //                                           GestureDetector(
                                //                                         onTap:
                                //                                             () {
                                //                                           setState(
                                //                                               () {
                                //                                             province =
                                //                                                 provinceList[index];
                                //                                           });
                                //                                           Navigator.of(context,
                                //                                                   rootNavigator: true)
                                //                                               .pop();
                                //                                         },
                                //                                         child:
                                //                                             Row(
                                //                                           mainAxisAlignment:
                                //                                               MainAxisAlignment.spaceBetween,
                                //                                           children: [
                                //                                             Text(
                                //                                               provinceList[index],
                                //                                               style:
                                //                                                   TextStyle(
                                //                                                 fontSize: getFontSize(
                                //                                                   16,
                                //                                                 ),
                                //                                                 fontFamily: 'Poppins',
                                //                                                 fontWeight: FontWeight.w500,
                                //                                               ),
                                //                                             ),
                                //                                           ],
                                //                                         ),
                                //                                       ),
                                //                                     );
                                //                                   },
                                //                                 ),
                                //                               )),
                                //                         );
                                //                       });
                                //                 },
                                //                 child: Text(
                                //                   province == ""
                                //                       ? "กรุณาเลือกจังหวัด"
                                //                       : province,
                                //                   overflow: TextOverflow.ellipsis,
                                //                   textAlign: TextAlign.start,
                                //                   style: TextStyle(
                                //                     fontSize: getFontSize(
                                //                       18,
                                //                     ),
                                //                     fontFamily: 'Poppins',
                                //                     fontWeight: FontWeight.w500,
                                //                   ),
                                //                 ),
                                //               ),
                                //             ),
                                //           ),
                                //         ],
                                //       ),
                                //     ),
                                //   ),
                                // ),
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
                                      "ระบุค่าจ้าง",
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
                                          itemCount: payList.length,
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemBuilder: (context, index) {
                                            return Row(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      payTypeIndex = index;
                                                      index == 1
                                                          ? Isshow = true
                                                          : Isshow = false;
                                                      salary = payList[index];
                                                      _SalaryController.clear();
                                                    });
                                                  },
                                                  child: Container(
                                                    alignment: Alignment.center,
                                                    height: getVerticalSize(
                                                      37.00,
                                                    ),
                                                    padding: EdgeInsets.symmetric(
                                                        horizontal:
                                                            getHorizontalSize(
                                                                16)),
                                                    decoration: BoxDecoration(
                                                      color: payTypeIndex ==
                                                              index
                                                          ? ColorConstant
                                                              .blueA200
                                                          : isDark
                                                              ? ColorConstant
                                                                  .darkbutton
                                                              : ColorConstant
                                                                  .gray300,
                                                    ),
                                                    child: Text(
                                                      payList[index],
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: TextStyle(
                                                        color: payTypeIndex ==
                                                                index
                                                            ? Colors.white
                                                            : isDark
                                                                ? ColorConstant
                                                                    .gray100
                                                                : ColorConstant
                                                                    .gray700,
                                                        fontSize: getFontSize(
                                                          18,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          }),
                                    )),
                                Visibility(
                                  visible: Isshow,
                                  child: SizedBox(
                                    width: 200,
                                    child: TextFormField(
                                      controller: _SalaryController,
                                      onChanged: (value) {
                                        setState(() {
                                          salary = _SalaryController.text;
                                        });
                                      },
                                      decoration: InputDecoration(
                                        hintText: '',
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                vertical: 10.0,
                                                horizontal: 10.0),
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
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
                                    "กำหนดวันรับสมัครงาน",
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
                                      left: getHorizontalSize(
                                        24.00,
                                      ),
                                      top: getVerticalSize(
                                        2.00,
                                      ),
                                    ),
                                    child: SfDateRangePicker(
                                      onSelectionChanged: _onSelectionChanged,
                                      selectionMode:
                                          DateRangePickerSelectionMode.range,
                                      minDate: DateTime.now(),
                                      initialSelectedRange:
                                          PickerDateRange(startdate, enddate),
                                    )),
                              ],
                            ),
                          ),
                        ),

                        Card(
                          child: Column(
                            children: [
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
                                                          getHorizontalSize(
                                                              16)),
                                                  decoration: BoxDecoration(
                                                    color: GenderIndex == index
                                                        ? ColorConstant.blueA200
                                                        : isDark
                                                            ? ColorConstant
                                                                .darkbutton
                                                            : ColorConstant
                                                                .gray300,
                                                  ),
                                                  child: Text(
                                                    genderList[index],
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: GenderIndex ==
                                                              index
                                                          ? Colors.white
                                                          : isDark
                                                              ? ColorConstant
                                                                  .gray100
                                                              : ColorConstant
                                                                  .gray700,
                                                      fontSize: getFontSize(
                                                        18,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                  )),
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
                              RangeSlider(
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
                            ],
                          ),
                        ),

                        // DropdownSearch<String>(
                        //     popupProps: PopupProps.menu(
                        //       showSelectedItems: true,
                        //       disabledItemFn: (String s) => s.startsWith('I'),
                        //     ),
                        //     items: provinceList,
                        //     dropdownDecoratorProps: DropDownDecoratorProps(
                        //       dropdownSearchDecoration: InputDecoration(
                        //         labelText: "Menu mode",
                        //         hintText: "country in menu mode",
                        //       ),
                        //     ),
                        //     onChanged: (data) {
                        //       setState(() {
                        //         province = data!;
                        //       });
                        //     }),
                        // Row(
                        //   mainAxisSize: MainAxisSize.min,
                        //   children: [
                        //     Padding(
                        //       padding: EdgeInsets.only(top: 20),
                        //       child: TextButton(
                        //         style: TextButton.styleFrom(
                        //           foregroundColor: Colors.white,
                        //           backgroundColor: ColorConstant.teal600,
                        //         ),
                        //         onPressed: () {
                        //           // print(jobTypesList[jobTypeIndex]);
                        //           // print(province);
                        //           job.CreateJob(
                        //               id: user.uid,
                        //               title: _titleController.text,
                        //               description: dataaa,
                        //               jobtype: jobTypesList[jobTypeIndex],
                        //               province: province,
                        //               Requirements: {
                        //                 "Age":
                        //                     "${_currentRangeValues.start.toString()}-${_currentRangeValues.end.toString()}",
                        //                 "Exp": "5",
                        //                 "Gender": genderList[GenderIndex],
                        //               });
                        //         },
                        //         child: Text(
                        //           "บันทึก",
                        //           style: TextStyle(fontSize: 18),
                        //         ),
                        //       ),
                        //     ),
                        //     Padding(
                        //       padding: EdgeInsets.only(top: 20, left: 100),
                        //       child: TextButton(
                        //         style: TextButton.styleFrom(
                        //           foregroundColor: Colors.white,
                        //           backgroundColor: ColorConstant.gray700,
                        //         ),
                        //         onPressed: () {
                        //           Navigator.pop(context);
                        //         },
                        //         child: Text(
                        //           "ยกเลิก",
                        //           style: TextStyle(fontSize: 18),
                        //         ),
                        //       ),
                        //     ),
                        //   ],
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

getprovince() {
  return [
    'หนองบัวลำภู',
    'อ่างทอง',
    'อำนาจเจริญ',
    'อุดรธานี',
    'อุตรดิตถ์',
    'อุทัยธานี',
    'อุบลราชธานี'
  ];
}
