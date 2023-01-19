import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/job.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/employer/employee_view.dart';
import 'package:hires/presentation/employer/sendmessage.dart';
import 'package:hires/presentation/messages_screen/chat_screen.dart';

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
          "status": "รอการสำภาษณ์"
        }, SetOptions(merge: true));
        SendMessage(
          "วันนัดสัมภาษณ์ของคุณคือวันที่ ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}",
          user.uid,
          widget.appliedata["uid"],
        );
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
                                          12.00,
                                        ),
                                        top: getVerticalSize(
                                          10.00,
                                        ),
                                        right: getHorizontalSize(
                                          12.00,
                                        ),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getSize(
                                            52.00,
                                          ),
                                        ),
                                        child: Container(
                                          height: getSize(
                                            75.00,
                                          ),
                                          width: getSize(
                                            75.00,
                                          ),
                                          color: ColorConstant.gray300,
                                          child: _data["imgurl"] != ""
                                              ? Image.network(
                                                  _data["imgurl"],
                                                  fit: BoxFit.cover,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  height: 300,
                                                )
                                              : Icon(
                                                  Icons.person,
                                                  size: 40,
                                                  color: Colors.teal,
                                                ),
                                        ),
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
                                          padding: EdgeInsets.only(
                                              top: getVerticalSize(
                                                10.00,
                                              ),
                                              right: 10),
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
                                                  "วันสำภาษณ์ : ",
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
                                              5.00,
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
                                        // Padding(
                                        //   padding: EdgeInsets.only(
                                        //       top: 10, bottom: 5),
                                        //   child: Row(
                                        //     children: [
                                        //       Padding(
                                        //         padding: const EdgeInsets.only(
                                        //             left: 5.0),
                                        //         child: TextButton(
                                        //           style: TextButton.styleFrom(
                                        //             foregroundColor:
                                        //                 Colors.white,
                                        //             backgroundColor:
                                        //                 ColorConstant.yellow,
                                        //           ),
                                        //           onPressed: () async {
                                        //             Navigator.push(
                                        //                 context,
                                        //                 MaterialPageRoute(
                                        //                     builder:
                                        //                         (context) =>
                                        //                             ChatScreen(
                                        //                               friendId:
                                        //                                   widget
                                        //                                       .appliedata["uid"],
                                        //                               name: _data[
                                        //                                   'fullname'],
                                        //                             )));
                                        //           },
                                        //           child: Icon(Icons.chat),
                                        //         ),
                                        //       ),
                                        //     ],
                                        //   ),
                                        // ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 10, bottom: 10),
                                          child: Row(
                                            children: [
                                              OutlinedButton(
                                                onPressed: () async {
                                                  _restorableDatePickerRouteFuture
                                                      .present();
                                                },
                                                child: const Text(
                                                  'เลือกวันสำภาษณ์',
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                              ),
                                              SizedBox(),
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
                                                        .set(
                                                            {
                                                          "status": "เสร็จสิ้น"
                                                        },
                                                            SetOptions(
                                                                merge:
                                                                    true)).then(
                                                      (value) {
                                                        db
                                                            .collection('users')
                                                            .doc(user.uid)
                                                            .collection(
                                                                'jobPost')
                                                            .doc(widget
                                                                    .appliedata[
                                                                "JobId"])
                                                            .update({
                                                          "total": FieldValue
                                                              .increment(1)
                                                        });
                                                      },
                                                    );
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
