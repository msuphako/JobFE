import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/job.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/employer/employee_view.dart';
import 'package:hires/presentation/job_details1_screen/job_details1_screen.dart';
import 'package:hires/presentation/profile_style_1_screen/resume.dart';
import 'package:hires/presentation/profile_style_1_screen/profile_style_1_screen.dart';
import 'package:hires/presentation/profile_style_2_screen/profile_style_2_screen.dart';
import 'package:hires/resume.dart';
import 'package:hires/thdate.dart';
import 'package:timeago/timeago.dart' as timeago;

class PersonCard extends StatefulWidget {
  Map<String, dynamic> _data;
  PersonCard(this._data);

  @override
  State<PersonCard> createState() => _PersonCardState();
}

class _PersonCardState extends State<PersonCard> {
  String title = "";
  String showtime = "";
  @override
  void initState() {
    var data = List<String>.from(widget._data['jobwanted'] as List);
    data.forEach((element) {
      title += "$element ";
    });
    Timestamp date = widget._data["create_at"];
    DateTime dtime = date.toDate();
    timeago.setLocaleMessages('th', ThMessages());
    showtime = timeago.format(dtime, locale: 'th');
    // print(timeago.format(dtime, locale: 'th'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: () {
        // Navigator.pushNamed(context, JobDetails1Screen.id);
        // Navigator.of(context).push(MaterialPageRoute(
        //     builder: (context) => JobDetails1Screen(resume_id: _data.resume_id!)));
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
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Emp_view_resume(widget._data["uid"])));
                        },
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
                                    child: widget._data["imgurl"] != ""
                                        ? Image.network(
                                            widget._data["imgurl"],
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        10.00,
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
                                            Container(
                                              width: 270,
                                              child: Text(
                                                title,
                                                maxLines: 5,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: getFontSize(
                                                    18,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w800,
                                                  color: ColorConstant.teal600,
                                                ),
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
                                            "เพศ : ",
                                            overflow: TextOverflow.ellipsis,
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
                                            widget._data["gender"],
                                            overflow: TextOverflow.ellipsis,
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
                                            overflow: TextOverflow.ellipsis,
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
                                            widget._data["age"] + " ปี",
                                            overflow: TextOverflow.ellipsis,
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
                                            "งานที่เคยทำ : ",
                                            overflow: TextOverflow.ellipsis,
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
                                            widget._data["position"],
                                            overflow: TextOverflow.ellipsis,
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
                                            "ระยะเวลา : ",
                                            overflow: TextOverflow.ellipsis,
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
                                            widget._data["duration"],
                                            overflow: TextOverflow.ellipsis,
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
                                            overflow: TextOverflow.ellipsis,
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
                                            widget._data["province_work"],
                                            overflow: TextOverflow.ellipsis,
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
                                    padding:
                                        EdgeInsets.only(top: 10, bottom: 10),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 180,
                                          child: Text(
                                            showtime,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Emp_view_resume(widget
                                                            ._data["uid"])));
                                          },
                                          child: Text(
                                            "รายละเอียด",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        // TextButton(
                                        //   style: TextButton.styleFrom(
                                        //     foregroundColor: Colors.white,
                                        //     backgroundColor:
                                        //         ColorConstant.teal600,
                                        //   ),
                                        //   onPressed: () {},
                                        //   child: Text(
                                        //     "บันทึก",
                                        //     style: TextStyle(fontSize: 16),
                                        //   ),
                                        // ),
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
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
