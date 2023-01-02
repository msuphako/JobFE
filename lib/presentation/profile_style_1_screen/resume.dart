import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/presentation/resume_portfolio_upload_screen/resume_portfolio_upload_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/resume.dart';
import '../profile_style_2_screen/widgets/group541_item_widget.dart';

class Profile extends StatefulWidget {
  static String id = "Profile";

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  RangeValues sliderRange = RangeValues(20, 80);
  List<String> genderList = ["ไม่ระบุ", "ชาย", "หญิง"];
  List<bool> drivinglistchk = [false, false, false];
  List<String> jobTypesList = [
    "ไม่ระบุ",
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

  List<Map> drivinglist = [
    {"name": "รถยนต์", "isChecked": false},
    {"name": "รถจักรยานยนต์", "isChecked": false},
    {
      "name": "รถบรรทุก",
      "isChecked": false,
    },
  ];

  var resume = Resume();
  var _fullnameController = TextEditingController();
  var _ageController = TextEditingController();
  var _dateController = TextEditingController();
  var _monthController = TextEditingController();
  var _yearController = TextEditingController();
  var _addressController = TextEditingController();
  var _phoneController = TextEditingController();
  var _emailController = TextEditingController();
  var _skilldetailController = TextEditingController();
  var _companynameController = TextEditingController();
  var _durationController = TextEditingController();
  var _positionController = TextEditingController();
  var _jobdetailController = TextEditingController();
  List<String> jobwantedlist = [];
  List<String> drivingname = [];
  bool Isshow = false;
  RangeValues _currentRangeValues = const RangeValues(60, 80);
  int jobTypeIndex = 0;
  int GenderIndex = 0;
  int payTypeIndex = 0;
  String province = "";
  String province_work = "";
  bool isEmpty = true;
  final user = FirebaseAuth.instance.currentUser!;

  void ShowSaveAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          Future.delayed(const Duration(seconds: 2), () {
            Navigator.pop(context);
          });
          return Dialog(
            child: Container(
              height: getVerticalSize(100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: getVerticalSize(5)),
                    child: Icon(Icons.task_alt,
                        color: ColorConstant.teal600, size: 40.0),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: getVerticalSize(5), bottom: getVerticalSize(10)),
                    child: Text(
                      "บันทึกเรียบร้อย",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: getFontSize(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void CreateResume() {
    drivingname.clear();

    drivinglist.forEach(
      (element) {
        if (element["isChecked"] == true) drivingname.add(element["name"]);
      },
    );
    resume.CreateResume(
      user.uid,
      _fullnameController.text,
      genderList[GenderIndex],
      _dateController.text,
      _monthController.text,
      _yearController.text,
      _ageController.text,
      province,
      _addressController.text,
      _emailController.text,
      _phoneController.text,
      _skilldetailController.text,
      drivingname,
      _companynameController.text,
      _durationController.text,
      _positionController.text,
      _jobdetailController.text,
      jobwantedlist,
      jobTypesList[jobTypeIndex],
      province_work,
    );
    // print(_companynameController.text);
    // print(_durationController.text);
    // print(_positionController.text);
    // print(_jobdetailController.text);
    // print(jobwantedlist);
    // print(jobTypesList[jobTypeIndex]);

    ShowSaveAlert();
  }

  List<String> jobwanteduserlist = [];
  void SetInput() async {
    await FirebaseFirestore.instance
        .collectionGroup('resume')
        .where("uid", isEqualTo: user.uid)
        .get()
        .then((QuerySnapshot querySnapshot) {
      if (querySnapshot.docs.isNotEmpty) {
        querySnapshot.docs.forEach((doc) {
          setState(() {
            _fullnameController.text = doc["fullname"];
            _addressController.text = doc["address"];
            _ageController.text = doc["age"];
            _dateController.text = doc["dateofbirth"]["date"];
            _monthController.text = doc["dateofbirth"]["month"];
            _yearController.text = doc["dateofbirth"]["year"];
            _emailController.text = doc["email"];
            _phoneController.text = doc["phone"];
            _skilldetailController.text = doc["skills"];
            _companynameController.text = doc["companyname"];
            _durationController.text = doc["duration"];
            _positionController.text = doc["position"];
            _jobdetailController.text = doc["jobdetail"];
            province = doc["location"];
            province_work = doc["province_work"];

            jobwanteduserlist = List<String>.from(doc['jobwanted'] as List);
            var data = List<String>.from(doc['drivingskill'] as List);
            data.forEach((element) {
              if (element == "รถยนต์") drivinglist[0]["isChecked"] = true;
              if (element == "รถจักรยานยนต์")
                drivinglist[1]["isChecked"] = true;
              if (element == "รถบรรทุก") drivinglist[2]["isChecked"] = true;
            });

            if (doc["gender"] == "ไม่ระบุ") GenderIndex = 0;
            if (doc["gender"] == "ชาย") GenderIndex = 1;
            if (doc["gender"] == "หญิง") GenderIndex = 2;

            if (doc["jobtype"] == "ไม่ระบุ") jobTypeIndex = 0;
            if (doc["jobtype"] == "งานประจำ") jobTypeIndex = 1;
            if (doc["jobtype"] == "งานพาทไทม์") jobTypeIndex = 2;
            if (doc["jobtype"] == "งานชั่วคราว") jobTypeIndex = 3;
            if (doc["jobtype"] == "ทำงานที่บ้าน") jobTypeIndex = 4;
          });
        });
      }
    });
  }

  @override
  void initState() {
    super.initState();
    SetInput();
  }

  bool isExpand = false;

  bool checkBoxVal = false;
  @override
  Widget build(BuildContext context) {
    // print(jobwanteduserlist);

    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: Container(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
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
                          top: getVerticalSize(16)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
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
                                child: Icon(Icons.arrow_back_ios,
                                    size: getSize(20),
                                    color:
                                        isDark ? Colors.white : Colors.black)),
                          ),
                          // Padding(
                          //   padding: EdgeInsets.only(
                          //     top: getVerticalSize(
                          //       3.00,
                          //     ),
                          //     bottom: getVerticalSize(
                          //       3.00,
                          //     ),
                          //   ),
                          //   child: Text(
                          //     "Edit",
                          //     overflow: TextOverflow.ellipsis,
                          //     textAlign: TextAlign.right,
                          //     style: TextStyle(
                          //       color: ColorConstant.gray400,
                          //       fontSize: getFontSize(
                          //         14,
                          //       ),
                          //       fontFamily: 'Circular Std',
                          //       fontWeight: FontWeight.w400,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: getVerticalSize(
                            16.00,
                          ),
                          bottom: getVerticalSize(
                            30.00,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: getSize(
                                104.00,
                              ),
                              width: getSize(
                                104.00,
                              ),
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  8.00,
                                ),
                                bottom: getVerticalSize(
                                  15.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.teal600,
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
                                    alignment: Alignment.center,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getSize(
                                          52.00,
                                        ),
                                      ),
                                      child: Icon(
                                        Icons.person,
                                        size: 50,
                                        color: Colors.white,
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
                                        ImageConstant.imgMaskgroup19,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 6.0,
                                  right: 6.0,
                                ),
                                child: ExpansionTile(
                                  initiallyExpanded: isExpand,
                                  textColor: ColorConstant.teal600,
                                  title: Text('ข้อมูลส่วนตัว',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
                                  children: <Widget>[
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
                                          "ชื่อ-นามสกุล",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: _fullnameController,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10.0,
                                                  horizontal: 10.0),
                                          hintText: '',
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
                                            6.00,
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
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            6.00,
                                          ),
                                          bottom: getVerticalSize(
                                            6.00,
                                          ),
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                            height: getVerticalSize(40),
                                            child: ListView.builder(
                                                itemCount: genderList.length,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                shrinkWrap: true,
                                                itemBuilder: (context, index) {
                                                  return Row(
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left:
                                                                    getHorizontalSize(
                                                                  6.00,
                                                                ),
                                                                right:
                                                                    getHorizontalSize(
                                                                        6)),
                                                        child: GestureDetector(
                                                          onTap: () {
                                                            setState(() {
                                                              GenderIndex =
                                                                  index;
                                                            });
                                                          },
                                                          child: Container(
                                                            alignment: Alignment
                                                                .center,
                                                            height:
                                                                getVerticalSize(
                                                              37.00,
                                                            ),
                                                            padding: EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        getHorizontalSize(
                                                                            16)),
                                                            decoration:
                                                                BoxDecoration(
                                                              color: GenderIndex ==
                                                                      index
                                                                  ? ColorConstant
                                                                      .blueA200
                                                                  : isDark
                                                                      ? ColorConstant
                                                                          .darkbutton
                                                                      : ColorConstant
                                                                          .gray300,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                getHorizontalSize(
                                                                  97.00,
                                                                ),
                                                              ),
                                                            ),
                                                            child: Text(
                                                              genderList[index],
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyle(
                                                                color: GenderIndex ==
                                                                        index
                                                                    ? Colors
                                                                        .white
                                                                    : isDark
                                                                        ? ColorConstant
                                                                            .gray100
                                                                        : ColorConstant
                                                                            .gray700,
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
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  );
                                                }),
                                          ),
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          20.00,
                                        ),
                                        top: getVerticalSize(
                                          6.00,
                                        ),
                                        right: getHorizontalSize(
                                          20.00,
                                        ),
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "วัน เดือน ปี ที่เกิด ",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Column(
                                              children: [
                                                TextFormField(
                                                  controller: _dateController,
                                                  keyboardType:
                                                      TextInputType.number,
                                                  maxLength: 2,
                                                  inputFormatters: <
                                                      TextInputFormatter>[
                                                    // for below version 2 use this
                                                    FilteringTextInputFormatter
                                                        .allow(RegExp(
                                                            r'[1-9]|1[0-2]')),
                                                    // for version 2 and greater youcan also use this
                                                    FilteringTextInputFormatter
                                                        .digitsOnly
                                                  ],
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        const EdgeInsets
                                                                .symmetric(
                                                            vertical: 10.0,
                                                            horizontal: 10.0),
                                                    hintText: 'วัน',
                                                    counterText: "",
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: TextFormField(
                                              controller: _monthController,
                                              keyboardType:
                                                  TextInputType.number,
                                              maxLength: 2,
                                              inputFormatters: <
                                                  TextInputFormatter>[
                                                // for below version 2 use this
                                                FilteringTextInputFormatter
                                                    .allow(RegExp(
                                                        r'[1-9]|1[0-2]')),
                                                // for version 2 and greater youcan also use this
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10.0,
                                                        horizontal: 10.0),
                                                counterText: "",
                                                hintText: 'เดือน',
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: TextFormField(
                                              controller: _yearController,
                                              keyboardType:
                                                  TextInputType.number,
                                              maxLength: 4,
                                              inputFormatters: <
                                                  TextInputFormatter>[
                                                // for below version 2 use this
                                                FilteringTextInputFormatter
                                                    .allow(RegExp(r'[0-9]|')),
                                                // for version 2 and greater youcan also use this
                                                FilteringTextInputFormatter
                                                    .digitsOnly
                                              ],
                                              decoration: InputDecoration(
                                                contentPadding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10.0,
                                                        horizontal: 10.0),
                                                hintText: 'ปี พ.ศ.',
                                                counterText: "",
                                              ),
                                            ),
                                          ),
                                        ),
                                      ]),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20.00,
                                          ),
                                          top: getVerticalSize(
                                            6.00,
                                          ),
                                          right: getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        child: Text(
                                          "ระบุอายุ",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          width: 100.0,
                                          child: TextFormField(
                                            controller: _ageController,
                                            keyboardType: TextInputType.number,
                                            maxLength: 3,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              // for below version 2 use this
                                              FilteringTextInputFormatter.allow(
                                                  RegExp(r'[1-9]|')),
                                              // for version 2 and greater youcan also use this
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10.0,
                                                      horizontal: 10.0),
                                              hintText: '',
                                              counterText: '',
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10.0)),
                                              ),
                                            ),
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
                                          6.00,
                                        ),
                                        right: getHorizontalSize(
                                          20.00,
                                        ),
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "จังหวัด",
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
                                        left: getHorizontalSize(
                                          12.00,
                                        ),
                                        top: getVerticalSize(
                                          6.00,
                                        ),
                                        right: getHorizontalSize(
                                          20.00,
                                        ),
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Dialog(
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            size.height),
                                                        width:
                                                            getHorizontalSize(
                                                                40),
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal:
                                                                getHorizontalSize(
                                                                    16),
                                                            vertical:
                                                                getVerticalSize(
                                                                    30)),
                                                        child: Center(
                                                          child:
                                                              ListView.builder(
                                                            itemCount:
                                                                provinceList
                                                                    .length,
                                                            shrinkWrap: true,
                                                            itemBuilder:
                                                                (context,
                                                                    index) {
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
                                                                    setState(
                                                                        () {
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
                                                                              FontWeight.w500,
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
                                          child: Container(
                                            width: 200,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 173, 173, 173),
                                                    spreadRadius: 1),
                                              ],
                                            ),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  province,
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                          right: getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        child: Text(
                                          "ที่อยู่ปัจจุบัน",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: _addressController,
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
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20.00,
                                          ),
                                          top: getVerticalSize(
                                            6.00,
                                          ),
                                          right: getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        child: Text(
                                          "เบอร์ติดต่อ",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: SizedBox(
                                          width: 200.0,
                                          child: TextFormField(
                                            controller: _phoneController,
                                            keyboardType: TextInputType.number,
                                            maxLength: 10,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              // for below version 2 use this
                                              FilteringTextInputFormatter.allow(
                                                  RegExp(r'[0-9]|')),
                                              // for version 2 and greater youcan also use this
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            decoration: InputDecoration(
                                              contentPadding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10.0,
                                                      horizontal: 10.0),
                                              hintText: '',
                                              counterText: '',
                                              border: OutlineInputBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10.0)),
                                              ),
                                            ),
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
                                            6.00,
                                          ),
                                          right: getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        child: Text(
                                          "อีเมลสำหรับติดต่อ",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: _emailController,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10.0,
                                                  horizontal: 10.0),
                                          hintText: '',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, bottom: 20),
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor:
                                              ColorConstant.teal600,
                                        ),
                                        onPressed: () {
                                          CreateResume();
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
                            Card(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 6.0,
                                  right: 6.0,
                                ),
                                child: ExpansionTile(
                                  initiallyExpanded: isExpand,
                                  textColor: ColorConstant.teal600,
                                  title: Text('ทักษะความสามารถ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20.00,
                                          ),
                                          top: getVerticalSize(
                                            6.00,
                                          ),
                                          right: getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        child: Text(
                                          "ระบุความสามารถของตนเอง",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: _skilldetailController,
                                        minLines: 5,
                                        maxLines: 7,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10.0,
                                                  horizontal: 10.0),
                                          hintText: '',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        children: [
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
                                              "ความสามารถไนการขับขี่",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.gray800,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 200,
                                            child: Column(
                                                children:
                                                    drivinglist.map((hobby) {
                                              return CheckboxListTile(
                                                  controlAffinity:
                                                      ListTileControlAffinity
                                                          .leading,
                                                  value: hobby["isChecked"],
                                                  title: Text(hobby["name"]),
                                                  onChanged: (newValue) {
                                                    setState(() {
                                                      hobby["isChecked"] =
                                                          newValue;
                                                    });
                                                    print(hobby);
                                                  });
                                            }).toList()),
                                          ),
                                          // Padding(
                                          //   padding: EdgeInsets.only(
                                          //     left: getHorizontalSize(
                                          //       20.00,
                                          //     ),
                                          //     top: getVerticalSize(
                                          //       10.00,
                                          //     ),
                                          //     right: getHorizontalSize(
                                          //       20.00,
                                          //     ),
                                          //   ),
                                          //   child: Text(
                                          //     "ความสามารถไนการมอง",
                                          //     overflow: TextOverflow.ellipsis,
                                          //     textAlign: TextAlign.start,
                                          //     style: TextStyle(
                                          //       color: ColorConstant.gray800,
                                          //       fontSize: getFontSize(
                                          //         18,
                                          //       ),
                                          //       fontFamily: 'Poppins',
                                          //       fontWeight: FontWeight.w500,
                                          //     ),
                                          //   ),
                                          // ),
                                          // Container(
                                          //   width: 200,
                                          //   child: Column(
                                          //       children: drivinglist
                                          //           .map((hobby) {
                                          //     return CheckboxListTile(
                                          //         controlAffinity:
                                          //             ListTileControlAffinity
                                          //                 .leading,
                                          //         value: hobby["isChecked"],
                                          //         title: Text(hobby["name"]),
                                          //         onChanged: (newValue) {
                                          //           setState(() {
                                          //             hobby["isChecked"] =
                                          //                 newValue;
                                          //           });
                                          //         });
                                          //   }).toList()),
                                          // ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, bottom: 20),
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor:
                                              ColorConstant.teal600,
                                        ),
                                        onPressed: () {
                                          // resume.test(context);
                                          CreateResume();
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
                            Card(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 6.0,
                                  right: 6.0,
                                ),
                                child: ExpansionTile(
                                  initiallyExpanded: isExpand,
                                  textColor: ColorConstant.teal600,
                                  title: Text('ประวัติการทำงาน',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
                                  children: <Widget>[
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            20.00,
                                          ),
                                          top: getVerticalSize(
                                            6.00,
                                          ),
                                          right: getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        child: Text(
                                          "ชื่อบริษัท",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: _companynameController,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10.0,
                                                  horizontal: 10.0),
                                          hintText: '',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
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
                                            6.00,
                                          ),
                                          right: getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        child: Text(
                                          "ระยะเวลา",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: _durationController,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10.0,
                                                  horizontal: 10.0),
                                          hintText: '',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
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
                                            6.00,
                                          ),
                                          right: getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        child: Text(
                                          "ตำแหน่ง",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: _positionController,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10.0,
                                                  horizontal: 10.0),
                                          hintText: '',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
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
                                            6.00,
                                          ),
                                          right: getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        child: Text(
                                          "รายละเอียดงานที่ทำ",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        controller: _jobdetailController,
                                        minLines: 5,
                                        maxLines: 7,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              const EdgeInsets.symmetric(
                                                  vertical: 10.0,
                                                  horizontal: 10.0),
                                          hintText: '',
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, bottom: 20),
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor:
                                              ColorConstant.teal600,
                                        ),
                                        onPressed: () {
                                          CreateResume();
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
                            Card(
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 6.0,
                                  right: 6.0,
                                ),
                                child: ExpansionTile(
                                  initiallyExpanded: isExpand,
                                  textColor: ColorConstant.teal600,
                                  title: Text('งานที่ต้องการ',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600)),
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child:
                                          DropdownSearch<String>.multiSelection(
                                        popupProps:
                                            PopupPropsMultiSelection.menu(
                                          showSelectedItems: true,
                                          disabledItemFn: (String s) =>
                                              s.startsWith('I'),
                                        ),
                                        items: JobList,
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
                                          jobwantedlist = value;
                                        },
                                        selectedItems: jobwanteduserlist,
                                        // selectedItem: "Brazil",
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                          left: getHorizontalSize(
                                            10.00,
                                          ),
                                          top: getVerticalSize(
                                            10.00,
                                          ),
                                          right: getHorizontalSize(
                                            20.00,
                                          ),
                                        ),
                                        child: Text(
                                          "รูปแบบงาน",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w600,
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
                                                          left:
                                                              getHorizontalSize(
                                                            2.00,
                                                          ),
                                                          right:
                                                              getHorizontalSize(
                                                                  2)),
                                                      child: GestureDetector(
                                                        onTap: () {
                                                          setState(() {
                                                            jobTypeIndex =
                                                                index;
                                                          });
                                                        },
                                                        child: Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height:
                                                              getVerticalSize(
                                                            37.00,
                                                          ),
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      getHorizontalSize(
                                                                          16)),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: jobTypeIndex ==
                                                                    index
                                                                ? ColorConstant
                                                                    .blueA200
                                                                : isDark
                                                                    ? ColorConstant
                                                                        .darkbutton
                                                                    : ColorConstant
                                                                        .gray300,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                97.00,
                                                              ),
                                                            ),
                                                          ),
                                                          child: Text(
                                                            jobTypesList[index],
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: TextStyle(
                                                              color: jobTypeIndex ==
                                                                      index
                                                                  ? Colors.white
                                                                  : isDark
                                                                      ? ColorConstant
                                                                          .gray100
                                                                      : ColorConstant
                                                                          .gray700,
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
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              }),
                                        )),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          20.00,
                                        ),
                                        top: getVerticalSize(
                                          6.00,
                                        ),
                                        right: getHorizontalSize(
                                          20.00,
                                        ),
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "จังหวัดที่ต้องการทำงาน",
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
                                        left: getHorizontalSize(
                                          12.00,
                                        ),
                                        top: getVerticalSize(
                                          6.00,
                                        ),
                                        right: getHorizontalSize(
                                          20.00,
                                        ),
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: GestureDetector(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return Dialog(
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            size.height),
                                                        width:
                                                            getHorizontalSize(
                                                                40),
                                                        padding: EdgeInsets.symmetric(
                                                            horizontal:
                                                                getHorizontalSize(
                                                                    16),
                                                            vertical:
                                                                getVerticalSize(
                                                                    30)),
                                                        child: Center(
                                                          child:
                                                              ListView.builder(
                                                            itemCount:
                                                                provinceList
                                                                    .length,
                                                            shrinkWrap: true,
                                                            itemBuilder:
                                                                (context,
                                                                    index) {
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
                                                                    setState(
                                                                        () {
                                                                      province_work =
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
                                                                              FontWeight.w500,
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
                                          child: Container(
                                            width: 200,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Color.fromARGB(
                                                        255, 173, 173, 173),
                                                    spreadRadius: 1),
                                              ],
                                            ),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 8.0),
                                                child: Text(
                                                  province_work,
                                                  overflow:
                                                      TextOverflow.ellipsis,
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
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          EdgeInsets.only(top: 20, bottom: 20),
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          foregroundColor: Colors.white,
                                          backgroundColor:
                                              ColorConstant.teal600,
                                        ),
                                        onPressed: () {
                                          CreateResume();
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
