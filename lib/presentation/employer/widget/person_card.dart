import 'package:flutter/material.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/job.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/job_details1_screen/job_details1_screen.dart';
import 'package:hires/presentation/profile_style_1_screen/profile.dart';
import 'package:hires/presentation/profile_style_1_screen/profile_style_1_screen.dart';
import 'package:hires/presentation/profile_style_2_screen/profile_style_2_screen.dart';
import 'package:hires/resume.dart';

class PersonCard extends StatelessWidget {
  final Resume _data;
  PersonCard(this._data);

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
            height: getVerticalSize(220),
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
                          Navigator.pushNamed(context, JobDetails1Screen.id);
                        },
                        child: lightCostumContainer(
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  left: getHorizontalSize(
                                    24.00,
                                  ),
                                  top: getVerticalSize(
                                    10.00,
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      top: getVerticalSize(
                                        16.00,
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
                                        Padding(
                                          padding: EdgeInsets.only(),
                                          child: Text(
                                            "",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                18,
                                              ),
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Container(
                                              width: 200,
                                              child: Text(
                                                _data.title!,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: getFontSize(
                                                    18,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              _data.create_date!,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
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
                                            _data.gender!,
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
                                            _data.age!,
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
                                              24.00,
                                            ),
                                          ),
                                          child: Text(
                                            _data.occupation!,
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
                                            "ประสบการณ์ : ",
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
                                            _data.exp! + " ปี",
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
                                            "ตำแหน่ง : ",
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
                                            _data.location!,
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
                                        Container(
                                          width: 120,
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(),
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, Profile.id);
                                          },
                                          child: Text(
                                            "รายละเอียด",
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        TextButton(
                                          style: TextButton.styleFrom(
                                            foregroundColor: Colors.white,
                                            backgroundColor:
                                                ColorConstant.teal600,
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            "บันทึก",
                                            style: TextStyle(fontSize: 16),
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
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
