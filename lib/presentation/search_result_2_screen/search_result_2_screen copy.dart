import 'package:flutter/material.dart';
import 'package:hires/core/theme/theme_constants.dart';
import 'package:hires/job.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/job_details1_screen/job_details1_screen.dart';

class JobCard extends StatelessWidget {
  final Job _datajobs;
  JobCard(this._datajobs);

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    List<dynamic> Description = _datajobs.Description;
    return GestureDetector(
      onTap: () {
        print(_datajobs.JobId!);

        // Navigator.pushNamed(context, JobDetails1Screen.id);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => JobDetails1Screen(_datajobs.JobId!)));
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
            height: getVerticalSize(160),
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
                                              16,
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
                                              _datajobs.Title!,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: getFontSize(
                                                  16,
                                                ),
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w700,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            _datajobs.Age!,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: getFontSize(
                                                15,
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
                                              15,
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
                                          _datajobs.Age!,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: isDark
                                                ? Colors.white
                                                : ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              15,
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
                                              15,
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
                                          _datajobs.Age!,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: isDark
                                                ? Colors.white
                                                : ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              15,
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
                                              15,
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
                                          _datajobs.Age!,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: isDark
                                                ? Colors.white
                                                : ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              15,
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
                                              15,
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
                                          _datajobs.Location!,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: isDark
                                                ? Colors.white
                                                : ColorConstant.gray800,
                                            fontSize: getFontSize(
                                              15,
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
                                  padding: EdgeInsets.only(top: 10, bottom: 10),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: size.width / 2,
                                      ),
                                      // TextButton(
                                      //   style: TextButton.styleFrom(),
                                      //   onPressed: () {
                                      //     // Navigator.pushNamed(
                                      //     //     context, Profile.id);
                                      //   },
                                      //   child: Text(
                                      //     "รายละเอียด",
                                      //     style: TextStyle(fontSize: 16),
                                      //   ),
                                      // ),
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
              )
            ]),
          ),
        ),
      ),
    );
  }
}
