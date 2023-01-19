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
  Map<String, Object> searchdata;
  SearchResultPerson(this.searchdata);

  @override
  State<SearchResultPerson> createState() => _SearchResultPersonState();
}

class _SearchResultPersonState extends State<SearchResultPerson> {
  var resume = Resume();
  final Stream<QuerySnapshot> getresume =
      db.collectionGroup('resume').where('status', isEqualTo: true).snapshots();

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "ผลการค้นหา",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: getFontSize(
                20,
              ),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
          actions: [
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
                  20.00,
                ),
                width: getHorizontalSize(
                  18.60,
                ),
                child: Icon(
                  Icons.filter_alt,
                  color: ColorConstant.teal600,
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
            // print(widget.searchdata);
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
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: getVerticalSize(10)),
                      shrinkWrap: true,
                      itemCount: total,
                      itemBuilder: (context, index) {
                        final resume =
                            resumedata[index].data()! as Map<String, dynamic>;
                        print(widget.searchdata);
                        int agestart =
                            int.parse('${widget.searchdata['agestart']}');
                        int ageend =
                            int.parse('${widget.searchdata['ageend']}');
                        int age = int.parse('${resume['age']}');
                        List<String> jobdetail =
                            widget.searchdata['jobdetail'] as List<String>;

                        List<String> jobwanted =
                            List<String>.from(resume['jobwanted'] as List);
                        // print(jobdetail);
                        if (widget.searchdata['jobtype'] != 'ทั้งหมด') {
                          // if(widget.searchdata['jobtype']){

                          // }
                        }

                        if (!jobdetail.contains('ทั้งหมด')) {
                          // print(jobdetail);
                          // print(jobwanted);

                          if (!jobdetail
                              .every((item) => jobwanted.contains(item))) {
                            return Text('');
                          }
                        }
                        if (widget.searchdata['province'] != 'ทั้งหมด') {
                          if (widget.searchdata['province'] !=
                              resume['province_work']) {
                            return Text('');
                          }
                        }
                        if (widget.searchdata['Gender'] != 'ทั้งหมด') {
                          if (widget.searchdata['Gender'] != resume['gender']) {
                            return Text('');
                          }
                        }
                        if (!(agestart < age && age < ageend)) {
                          return Text('');
                        }
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
