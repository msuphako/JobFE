import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:hires/job.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/search_result_2_screen/widgets/JobCard.dart';

class SearchResult2Screen extends StatefulWidget {
  static String id = "SearchResult2Screen";
  String jobTypesList;
  List<String> dataaa;
  String province;
  SearchResult2Screen(this.jobTypesList, this.dataaa, this.province);

  @override
  State<SearchResult2Screen> createState() => _SearchResult2ScreenState();
}

class _SearchResult2ScreenState extends State<SearchResult2Screen> {
  @override
  void initState() {
    // print(widget.jobTypesList);
    // print(widget.dataaa);
    // print(widget.province);

    super.initState();
  }

  GetSearch() {
    var jobtype;

    widget.jobTypesList == 'ทั้งหมด'
        ? jobtype = [
            "ทั้งหมด",
            "งานประจำ",
            "งานพาทไทม์",
            "งานชั่วคราว",
            "ทำงานที่บ้าน",
          ]
        : jobtype = [widget.jobTypesList];

    List<String> gg = [];
    gg.addAll(jobtype);
    final Stream<QuerySnapshot> jobpost = db
        .collectionGroup('jobPost')
        .where("search", arrayContainsAny: gg + widget.dataaa)
        .where("status", isEqualTo: 'กำลังเปิดรับสมัคร')
        .orderBy('created_at', descending: true)
        .snapshots();

    return jobpost;
  }

  int total = 0;
  List<String> jobdes = [];

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
                child: SvgPicture.asset(
                  ImageConstant.imgIconlylightfi,
                ),
              ),
            ),
          ],
          backgroundColor: isDark ? ColorConstant.darkContainer : Colors.white),
      body: StreamBuilder<QuerySnapshot>(
          stream: GetSearch(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              print(snapshot.error);
              return Text('No data ');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            }

            var jobdata = snapshot.data!.docs;
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
                        final job =
                            jobdata[index].data()! as Map<String, dynamic>;
                        // print(job['eid']);

                        return FutureBuilder<DocumentSnapshot>(
                            future:
                                db.collection('users').doc(job['eid']).get(),
                            builder: (context, AsyncSnapshot snapshot) {
                              if (snapshot.hasError) {
                                return Text('Something went wrong');
                              }

                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                    child: CircularProgressIndicator());
                              }

                              Map<String, dynamic> data =
                                  snapshot.data!.data() as Map<String, dynamic>;
                              if (!widget.province.contains('ทั้งหมด')) {
                                if (widget.province != data['province']) {
                                  return Text('');
                                }
                                ;
                              }
                              return JobCardSearch(job, data);
                            });
                      },
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}
