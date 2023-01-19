import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/presentation/messages_screen/chat_screen.dart';
import 'package:hires/presentation/resume_portfolio_upload_screen/resume_portfolio_upload_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/resume.dart';
import '../profile_style_2_screen/widgets/group541_item_widget.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

SendEmail(useremail) async {
  final Email email = Email(
    body: 'รายละเอียด',
    subject: 'หัวเรื่อง',
    recipients: [useremail],
    // cc: ['cc@example.com'],
    // bcc: ['bcc@example.com'],
    // attachmentPaths: ['/path/to/attachment.zip'],
    isHTML: false,
  );

  await FlutterEmailSender.send(email);
}

class Emp_view_resume extends StatefulWidget {
  static String id = "Profile";
  String uid;
  Emp_view_resume(this.uid);
  @override
  State<Emp_view_resume> createState() => _Emp_view_resume();
}

class _Emp_view_resume extends State<Emp_view_resume>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  final _JobTitleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController!.dispose();
  }

  bool isExpand = false;

  bool checkBoxVal = false;
  @override
  Widget build(BuildContext context) {
    // print(jobwanteduserlist);
    String driveskill = "";
    Query resumedata = FirebaseFirestore.instance
        .collectionGroup('resume')
        .where('status', isEqualTo: true)
        .where("uid", isEqualTo: widget.uid);
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return FutureBuilder<QuerySnapshot>(
        future: resumedata.get(),
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text("data ${snapshot.hasError}");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            var _data = snapshot.data?.docs[0];
            var driving = List<String>.from(_data['drivingskill'] as List);
            driving.forEach((element) {
              driveskill += element + " /";
            });
            // print(driving.length);
            return Scaffold(
              resizeToAvoidBottomInset: false,
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerFloat,
              floatingActionButton: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: getHorizontalSize(16)),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 290,
                        child: FloatingActionButton.extended(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    getHorizontalSize(12))),
                            backgroundColor: ColorConstant.teal600,
                            foregroundColor: ColorConstant.whiteA700,
                            extendedTextStyle: TextStyle(
                              color: ColorConstant.gray50,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w700,
                              letterSpacing: 0.07,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChatScreen(
                                            friendId: _data["uid"],
                                            name: _data["fullname"],
                                          )));
                            },
                            // onPressed: () {
                            //   Navigator.pushNamed(context, ApplyScreen.id);
                            // },
                            label: Text(
                              'พูดคุย',
                              style: TextStyle(fontSize: 18),
                            )),
                      ),
                      FloatingActionButton.extended(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(getHorizontalSize(50))),
                          backgroundColor: ColorConstant.yellow,
                          foregroundColor: ColorConstant.whiteA700,
                          extendedTextStyle: TextStyle(
                            color: ColorConstant.gray50,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.07,
                          ),
                          onPressed: () {
                            SendEmail(_data['email']);
                          },
                          // onPressed: () {
                          //   Navigator.pushNamed(context, ApplyScreen.id);
                          // },
                          label: Icon(Icons.email)),
                    ],
                  ),
                ),
              ),
              body: SafeArea(
                  child: Container(
                width: size.width,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Container(
                          height: getVerticalSize(
                            200.92,
                          ),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              ColorConstant.teal600,
                              ColorConstant.teal600,
                            ],
                          )),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                18.00,
                              ),
                              top: getVerticalSize(
                                15.92,
                              ),
                              right: getHorizontalSize(
                                18.00,
                              ),
                              bottom: getVerticalSize(
                                15.92,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(
                                          bottom: getVerticalSize(
                                            56.00,
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
                                                  color: Colors.white)),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            40.50,
                                          ),
                                        ),
                                        child: Container(
                                          height: getSize(
                                            100.00,
                                          ),
                                          width: getSize(
                                            100.00,
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              getSize(
                                                52.00,
                                              ),
                                            ),
                                            child: _data["imgurl"] != ''
                                                ? Image.network(
                                                    _data["imgurl"],
                                                    fit: BoxFit.cover,
                                                    width:
                                                        MediaQuery.of(context)
                                                            .size
                                                            .width,
                                                    height: 300,
                                                  )
                                                : Icon(
                                                    Icons.person_pin_rounded,
                                                    size: 75,
                                                    color: Colors.white,
                                                  ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: getVerticalSize(
                                            0.50,
                                          ),
                                          bottom: getVerticalSize(
                                            56.50,
                                          ),
                                        ),
                                        child: GestureDetector(
                                          onTap: () async {},
                                          child: Container(
                                            height: getSize(
                                              23.00,
                                            ),
                                            width: getSize(
                                              23.00,
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
                      ],
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  5.00,
                                ),
                              ),
                              child: Container(
                                height: getVerticalSize(50),
                                child: TabBar(
                                  indicatorColor: ColorConstant.teal600,
                                  controller: tabController,
                                  isScrollable: true,
                                  labelColor: isDark
                                      ? Colors.white
                                      : ColorConstant.teal600,
                                  unselectedLabelColor: ColorConstant.gray800,
                                  unselectedLabelStyle: TextStyle(
                                    fontSize: getFontSize(
                                      18,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                  ),
                                  labelStyle: TextStyle(
                                    fontSize: getFontSize(
                                      20,
                                    ),
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  tabs: [
                                    Tab(text: 'ข้อมูลส่วนตัว'),
                                    Tab(text: 'ความสามารถ'),
                                    Tab(text: 'ประวัติการทำงาน'),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: size.height,
                              child: TabBarView(
                                controller: tabController,
                                children: [
                                  Container(
                                    width: getHorizontalSize(
                                      327.00,
                                    ),
                                    margin: EdgeInsets.only(
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
                                    child: Container(
                                      decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                width: 1,
                                                color: ColorConstant.teal600)),
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                  alignment: Alignment.center,
                                                  width: 75,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                            width: 1,
                                                            color: ColorConstant
                                                                .teal600)),
                                                  ),
                                                  child: Icon(
                                                    Icons.person_pin,
                                                    color:
                                                        ColorConstant.teal600,
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data["fullname"],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                alignment: Alignment.center,
                                                width: 75,
                                                height: 35,
                                                decoration: BoxDecoration(
                                                  border: Border(
                                                      bottom: BorderSide(
                                                          width: 1,
                                                          color: ColorConstant
                                                              .teal600)),
                                                ),
                                                child: getIcon(_data["gender"]),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data["gender"],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                  alignment: Alignment.center,
                                                  width: 75,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                            width: 1,
                                                            color: ColorConstant
                                                                .teal600)),
                                                  ),
                                                  child: Icon(
                                                    Icons.cake,
                                                    color:
                                                        ColorConstant.teal600,
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data["dateofbirth"]["date"] +
                                                      "/" +
                                                      _data["dateofbirth"]
                                                          ["month"] +
                                                      "/" +
                                                      _data["dateofbirth"]
                                                          ["year"] +
                                                      " (${_data["age"]} ปี)",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                  alignment: Alignment.center,
                                                  width: 75,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                            width: 1,
                                                            color: ColorConstant
                                                                .teal600)),
                                                  ),
                                                  child: Icon(
                                                    Icons.phone_android,
                                                    color:
                                                        ColorConstant.teal600,
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data["phone"],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                  alignment: Alignment.center,
                                                  width: 75,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                            width: 1,
                                                            color: ColorConstant
                                                                .teal600)),
                                                  ),
                                                  child: Icon(
                                                    Icons.email,
                                                    color:
                                                        ColorConstant.teal600,
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data["email"],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            children: [
                                              Container(
                                                  alignment: Alignment.center,
                                                  width: 75,
                                                  height: 35,
                                                  decoration: BoxDecoration(
                                                    border: Border(
                                                        bottom: BorderSide(
                                                            width: 1,
                                                            color: ColorConstant
                                                                .teal600)),
                                                  ),
                                                  child: Icon(
                                                    Icons.location_pin,
                                                    color:
                                                        ColorConstant.teal600,
                                                  )),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data["location"],
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 50),
                                            child: Row(
                                              children: [
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "งานที่ต้องการ",
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.teal600,
                                                      fontSize: getFontSize(
                                                        19,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      20.00,
                                                    ),
                                                    right: getHorizontalSize(
                                                      20.00,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    _data["location"],
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray800,
                                                      fontSize: getFontSize(
                                                        18,
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
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              children: [
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "รูปแบบงาน",
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.teal600,
                                                      fontSize: getFontSize(
                                                        19,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      20.00,
                                                    ),
                                                    right: getHorizontalSize(
                                                      20.00,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    _data["jobtype"],
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray800,
                                                      fontSize: getFontSize(
                                                        18,
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
                                          Container(
                                            margin: EdgeInsets.only(top: 10),
                                            child: Row(
                                              children: [
                                                Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    "จังหวัดที่ต้องการทำงาน",
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.teal600,
                                                      fontSize: getFontSize(
                                                        18,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: getHorizontalSize(
                                                      20.00,
                                                    ),
                                                    right: getHorizontalSize(
                                                      20.00,
                                                    ),
                                                  ),
                                                  child: Text(
                                                    _data["province_work"],
                                                    style: TextStyle(
                                                      color:
                                                          ColorConstant.gray800,
                                                      fontSize: getFontSize(
                                                        18,
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
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      327.00,
                                    ),
                                    margin: EdgeInsets.only(
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
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10.00,
                                              ),
                                              top: getVerticalSize(
                                                6.00,
                                              ),
                                              right: getHorizontalSize(
                                                20.00,
                                              ),
                                            ),
                                            child: Text(
                                              "ทักษะความสามารถ",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.teal600,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
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
                                                    40.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    10.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data['skills'],
                                                  maxLines: 10,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
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
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10.00,
                                              ),
                                              top: getVerticalSize(
                                                6.00,
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
                                                color: ColorConstant.teal600,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
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
                                                    40.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    10.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  driveskill,
                                                  maxLines: 10,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Poppins',
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
                                  Container(
                                    width: getHorizontalSize(
                                      327.00,
                                    ),
                                    margin: EdgeInsets.only(
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
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10.00,
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
                                                color: ColorConstant.teal600,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
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
                                                    40.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    10.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data['companyname'],
                                                  maxLines: 10,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
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
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10.00,
                                              ),
                                              top: getVerticalSize(
                                                6.00,
                                              ),
                                              right: getHorizontalSize(
                                                20.00,
                                              ),
                                            ),
                                            child: Text(
                                              "เป็นระยะเวลา",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.teal600,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
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
                                                    40.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    10.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data['duration'],
                                                  maxLines: 10,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
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
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10.00,
                                              ),
                                              top: getVerticalSize(
                                                6.00,
                                              ),
                                              right: getHorizontalSize(
                                                20.00,
                                              ),
                                            ),
                                            child: Text(
                                              "ทำงานตำแหน่ง",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                color: ColorConstant.teal600,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
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
                                                    40.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    10.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data['position'],
                                                  maxLines: 10,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
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
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: getHorizontalSize(
                                                10.00,
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
                                                color: ColorConstant.teal600,
                                                fontSize: getFontSize(
                                                  18,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
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
                                                    40.00,
                                                  ),
                                                  top: getVerticalSize(
                                                    10.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    20.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data['jobdetail'],
                                                  maxLines: 10,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Poppins',
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }

  Icon getIcon(String gender) {
    if (gender == "ชาย") {
      return Icon(Icons.male, color: ColorConstant.teal600);
    } else if (gender == "หญิง") {
      return Icon(Icons.female, color: ColorConstant.teal600);
    } else {
      return Icon(Icons.transgender, color: ColorConstant.teal600);
    }
  }
}
