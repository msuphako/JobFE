import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/job.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/employer/employee_view.dart';
import 'package:hires/presentation/job_details1_screen/job_details1_screen.dart';
import 'package:hires/presentation/messages_screen/chat_screen.dart';
import 'package:hires/presentation/messages_screen/message_textfield.dart';
import 'package:hires/presentation/messages_screen/messages_screen.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:timeago/timeago.dart';
import 'package:date_time_picker/date_time_picker.dart';

class ThMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => 'ใน';
  @override
  String suffixAgo() => 'ที่แล้ว';
  @override
  String suffixFromNow() => 'จากนี้';
  @override
  String lessThanOneMinute(int seconds) => 'เมื่อครู่';
  @override
  String aboutAMinute(int minutes) => 'หนึ่งนาที';
  @override
  String minutes(int minutes) => '$minutes นาที';
  @override
  String aboutAnHour(int minutes) => 'หนึ่งชั่วโมง';
  @override
  String hours(int hours) => '$hours ชั่วโมง';
  @override
  String aDay(int hours) => 'หนึ่งวัน';
  @override
  String days(int days) => '$days วัน';
  @override
  String aboutAMonth(int days) => 'หนึ่งเดือน';
  @override
  String months(int months) => '$months เดือน';
  @override
  String aboutAYear(int year) => 'หนึ่งปี';
  @override
  String years(int years) => '$years ปี';
  @override
  String wordSeparator() => '';
}

/// Thai short messages
class ThShortMessages implements LookupMessages {
  @override
  String prefixAgo() => '';
  @override
  String prefixFromNow() => '';
  @override
  String suffixAgo() => '';
  @override
  String suffixFromNow() => '';
  @override
  String lessThanOneMinute(int seconds) => 'เมื่อครู่';
  @override
  String aboutAMinute(int minutes) => '1 นาที';
  @override
  String minutes(int minutes) => '$minutes นาที';
  @override
  String aboutAnHour(int minutes) => '~1 ชม';
  @override
  String hours(int hours) => '$hours ชม';
  @override
  String aDay(int hours) => '~1 ว';
  @override
  String days(int days) => '$days ว';
  @override
  String aboutAMonth(int days) => '~1 ด';
  @override
  String months(int months) => '$months ด';
  @override
  String aboutAYear(int year) => '~1 ป';
  @override
  String years(int years) => '$years ป';
  @override
  String wordSeparator() => ' ';
}

class InterviewCard extends StatefulWidget {
  Map<String, dynamic> appliedata;
  String DocId;
  InterviewCard(this.appliedata, this.DocId, {this.restorationId});
  final String? restorationId;

  @override
  State<InterviewCard> createState() => _InterviewCardState();
}

class _InterviewCardState extends State<InterviewCard> with RestorationMixin {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  String? get restorationId => widget.restorationId;

  final RestorableDateTime _selectedDate =
      RestorableDateTime(DateTime(2000, 1, 1));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
      RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  static Route<DateTime> _datePickerRoute(
    BuildContext context,
    Object? arguments,
  ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        DateTime now = DateTime.now();
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime(now.year, now.month, now.day),
          firstDate: DateTime(now.year, now.month, now.day),
          lastDate: DateTime(now.year + 2),
        );
      },
    );
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_selectedDate, 'selected_date');
    registerForRestoration(
        _restorableDatePickerRouteFuture, 'date_picker_route_future');
  }

  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        db
            .collection('users')
            .doc(user.uid)
            .collection('jobPost')
            .doc(widget.appliedata["JobId"])
            .collection("applied")
            .doc(widget.DocId)
            .set({
          "interview_date":
              '${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}',
          "statud": "รอการสำภาษณ์"
        }, SetOptions(merge: true));
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        ));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    DateTime now = new DateTime.now();

    Query resumedata = FirebaseFirestore.instance
        .collectionGroup('resume')
        .where("uid", isEqualTo: widget.appliedata["uid"]);
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

            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Emp_view_resume(_data["uid"])));
              },
              child: Padding(
                padding: EdgeInsets.only(
                  bottom: getVerticalSize(
                    1.00,
                  ),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Stack(alignment: Alignment.center, children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: lightCostumContainer(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                        left: getHorizontalSize(
                                          24.00,
                                        ),
                                        right: getHorizontalSize(
                                          24.00,
                                        ),
                                      ),
                                      child: Image.asset(
                                        ImageConstant.imgImage29,
                                        height: getSize(
                                          43.00,
                                        ),
                                        width: getSize(
                                          43.00,
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(),
                                                child: Text(
                                                  "วันที่นัดสำภาษณ์ : ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: isDark
                                                        ? Colors.white
                                                        : ColorConstant.red700,
                                                    fontSize: getFontSize(
                                                      17,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: getHorizontalSize(
                                                    14.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  widget.appliedata[
                                                      "interview_date"],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color: isDark
                                                        ? Colors.white
                                                        : ColorConstant.red700,
                                                    fontSize: getFontSize(
                                                      17,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: getVerticalSize(
                                              0.00,
                                            ),
                                            bottom: getVerticalSize(
                                              5.00,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(),
                                                    child: Text(
                                                      "สมัครงาน ",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: TextStyle(
                                                        color: isDark
                                                            ? Colors.white
                                                            : ColorConstant
                                                                .teal600,
                                                        fontSize: getFontSize(
                                                          18,
                                                        ),
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.w800,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    widget.appliedata["title"],
                                                    maxLines: 5,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontSize: getFontSize(
                                                        18,
                                                      ),
                                                      fontFamily: 'Poppins',
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      color:
                                                          ColorConstant.teal600,
                                                    ),
                                                  ),
                                                  // Padding(
                                                  //   padding:
                                                  //       EdgeInsets.only(left: 8.0),
                                                  //   child: Text(
                                                  //     showtime,
                                                  //     overflow: TextOverflow.ellipsis,
                                                  //     textAlign: TextAlign.left,
                                                  //     style: TextStyle(
                                                  //       fontSize: getFontSize(
                                                  //         14,
                                                  //       ),
                                                  //       fontFamily: 'Poppins',
                                                  //       fontWeight: FontWeight.w500,
                                                  //     ),
                                                  //   ),
                                                  // ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(),
                                                child: Text(
                                                  "ชื่อ : ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: isDark
                                                        ? Colors.white
                                                        : ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      17,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: getHorizontalSize(
                                                    14.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data["fullname"],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color: isDark
                                                        ? Colors.white
                                                        : ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      17,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(),
                                                child: Text(
                                                  "เพศ : ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: isDark
                                                        ? Colors.white
                                                        : ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      17,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: getHorizontalSize(
                                                    24.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data["gender"],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color: isDark
                                                        ? Colors.white
                                                        : ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      17,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(),
                                                child: Text(
                                                  "อายุ : ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: isDark
                                                        ? Colors.white
                                                        : ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      17,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: getHorizontalSize(
                                                    24.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data["age"] + " ปี",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color: isDark
                                                        ? Colors.white
                                                        : ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      17,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(),
                                                child: Text(
                                                  "จังหวัด : ",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: isDark
                                                        ? Colors.white
                                                        : ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      17,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  right: getHorizontalSize(
                                                    24.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  _data["province_work"],
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color: isDark
                                                        ? Colors.white
                                                        : ColorConstant.gray800,
                                                    fontSize: getFontSize(
                                                      17,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 10, bottom: 5),
                                          child: Row(
                                            children: [
                                              OutlinedButton(
                                                onPressed: () async {
                                                  _restorableDatePickerRouteFuture
                                                      .present();
                                                },
                                                child: const Text(
                                                    'เลือกวันสำภาษณ์'),
                                              ),
                                              SizedBox(
                                                width: 90,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 5.0),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    foregroundColor:
                                                        Colors.white,
                                                    backgroundColor:
                                                        ColorConstant.yellow,
                                                  ),
                                                  onPressed: () async {
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    ChatScreen(
                                                                      friendId:
                                                                          widget
                                                                              .appliedata["uid"],
                                                                    )));
                                                  },
                                                  child: Icon(Icons.chat),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 5, bottom: 10),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 150,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    foregroundColor:
                                                        Colors.white,
                                                    backgroundColor:
                                                        ColorConstant.teal600,
                                                  ),
                                                  onPressed: () async {
                                                    await db
                                                        .collection('users')
                                                        .doc(user.uid)
                                                        .collection('jobPost')
                                                        .doc(widget.appliedata[
                                                            "JobId"])
                                                        .collection("applied")
                                                        .doc(widget.DocId)
                                                        .set({
                                                      "status": "เสร็จสิ้น"
                                                    }, SetOptions(merge: true));
                                                  },
                                                  child: Text(
                                                    "เสร็จสิ้น",
                                                    style:
                                                        TextStyle(fontSize: 16),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(2.0),
                                                child: TextButton(
                                                  style: TextButton.styleFrom(
                                                    foregroundColor:
                                                        Color.fromARGB(
                                                            255, 55, 55, 55),
                                                    backgroundColor:
                                                        ColorConstant.red700,
                                                  ),
                                                  onPressed: () async {
                                                    await db
                                                        .collection('users')
                                                        .doc(user.uid)
                                                        .collection('jobPost')
                                                        .doc(widget.appliedata[
                                                            "JobId"])
                                                        .collection("applied")
                                                        .doc(widget.DocId)
                                                        .set({
                                                      "status": "ถูกยกเลิก"
                                                    }, SetOptions(merge: true));
                                                  },
                                                  child: Text(
                                                    "ยกเลิก",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.white),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
