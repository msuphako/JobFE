import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hires/presentation/employer/widget/person_card.dart';
import 'package:hires/presentation/search_result_2_screen/widgets/jobcard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/searchfilterbottomsheet_page/searchfilterbottomsheet_page.dart';
import 'package:hires/resume.dart';

class SearchResultPerson extends StatefulWidget {
  static String id = "SearchResultPerson";

  @override
  State<SearchResultPerson> createState() => _SearchResultPersonState();
}

class _SearchResultPersonState extends State<SearchResultPerson> {
  var resume = Resume();
  final Stream<QuerySnapshot> getresume =
      db.collectionGroup('resume').snapshots();

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
          title: Padding(
            padding: EdgeInsets.only(top: getVerticalSize(4)),
            child: TextFormField(
              readOnly: true,
              onTap: () {
                // Navigator.pushNamed(context, SearchOption3Screen.id);
                showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    )),
                    builder: (context) {
                      return SearchfilterbottomsheetPage();
                    });
              },
              decoration: InputDecoration(
                hintText: 'ค้นหาคน หรือ ตำแหน่ง',
                prefixIcon: Padding(
                  padding: EdgeInsets.only(
                    left: context.locale == Constants.engLocal
                        ? getHorizontalSize(
                            24.00,
                          )
                        : getHorizontalSize(10),
                    right: context.locale == Constants.arLocal
                        ? getHorizontalSize(
                            24.00,
                          )
                        : getHorizontalSize(10),
                  ),
                  child: Container(
                    height: getSize(
                      20.00,
                    ),
                    width: getSize(
                      20.00,
                    ),
                    child: isDark
                        ? SvgPicture.asset(
                            ImageConstant.imgSearch11,
                            fit: BoxFit.contain,
                            color: Colors.white,
                          )
                        : SvgPicture.asset(
                            ImageConstant.imgSearch11,
                            fit: BoxFit.contain,
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
          centerTitle: false,
          elevation: 0,
          leading: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: getHorizontalSize(
                  18.00,
                ),
                // right: getHorizontalSize(
                //   18.00,
                // ),
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
                        color: isDark ? Colors.white : Colors.black)),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getHorizontalSize(16),
                  vertical: getVerticalSize(18)),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  child: Icon(Icons.close),
                ),
              ),
            ),
          ],
          backgroundColor: isDark ? ColorConstant.darkContainer : Colors.white),
      body: StreamBuilder<QuerySnapshot>(
          stream: getresume,
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }
            var resumedata = snapshot.data!.docs;
            int total = snapshot.data!.docs.length;
            return Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: isDark
                    ? ColorConstant.darkContainer
                    : ColorConstant.whiteA700,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      327.00,
                    ),
                    margin: EdgeInsets.only(
                      left: getHorizontalSize(
                        24.00,
                      ),
                      top: getVerticalSize(
                        5.00,
                      ),
                      right: getHorizontalSize(
                        24.00,
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.gray402,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: getVerticalSize(
                        12.00,
                      ),
                      bottom: getVerticalSize(
                        8.00,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: context.locale == Constants.engLocal
                                ? getHorizontalSize(
                                    24.00,
                                  )
                                : getHorizontalSize(0),
                            right: context.locale == Constants.arLocal
                                ? getHorizontalSize(
                                    24.00,
                                  )
                                : getHorizontalSize(0),
                          ),
                          child: Text(
                            "ทั้งหมด $total คน",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.teal600,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: getVerticalSize(
                              4.00,
                            ),
                            left: context.locale == Constants.engLocal
                                ? getHorizontalSize(
                                    0.00,
                                  )
                                : getHorizontalSize(24),
                            right: context.locale == Constants.arLocal
                                ? getHorizontalSize(
                                    0.00,
                                  )
                                : getHorizontalSize(24),
                            bottom: getVerticalSize(
                              3.00,
                            ),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              14.00,
                            ),
                            width: getHorizontalSize(
                              12.60,
                            ),
                            child: SvgPicture.asset(
                              ImageConstant.imgIconlylightfi,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: getVerticalSize(10)),
                      shrinkWrap: true,
                      itemCount: total,
                      itemBuilder: (context, index) {
                        final resume =
                            resumedata[index].data()! as Map<String, dynamic>;
                        return PersonCard(resume);
                      },
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
