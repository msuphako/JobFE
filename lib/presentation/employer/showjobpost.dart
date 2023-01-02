import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/employer/widget/job_card.dart';
import 'package:hires/presentation/home_screen/home_screen.dart';
import '../saved_screen/widgets/saved_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';

class ShowJobPost extends StatefulWidget {
  static String id = "ShowJobPost";

  @override
  State<ShowJobPost> createState() => _ShowJobPostState();
}

class _ShowJobPostState extends State<ShowJobPost>
    with SingleTickerProviderStateMixin {
  final Stream<QuerySnapshot> test = db.collectionGroup('jobPost').snapshots();

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Saved",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getFontSize(
              16,
            ),
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                18.00,
              ),
              right: getHorizontalSize(
                18.00,
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
                      color: isDark ? Colors.white : Colors.black)),
            ),
          ),
        ),
      ),
      body: Container(
        width: size.width,
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: getHorizontalSize(
                              24.00,
                            ),
                            top: getVerticalSize(
                              34.00,
                            ),
                          ),
                          child: Text(
                            "No save Jobs",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontSize: getFontSize(
                                24,
                              ),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),

                      // Container(
                      //   padding: EdgeInsets.only(top: getVerticalSize(20)),
                      //   height: MediaQuery.of(context).size.height * .740,
                      //   child: Align(
                      //     alignment: Alignment.center,
                      //     child: ListView.builder(
                      //       physics: BouncingScrollPhysics(),
                      //       shrinkWrap: true,
                      //       itemCount: _datajobs.length,
                      //       itemBuilder: (context, index) {
                      //         return SaveJobCard(_datajobs[index] as Job,
                      //             SavedDocId[index], this.callback);
                      //         // return SavedItemWidget();
                      //       },
                      //     ),
                      //   ),
                      // ),
                      StreamBuilder<QuerySnapshot>(
                        stream: test,
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.hasError) {
                            return Text('Something went wrong');
                          }

                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          }
                          var jobdata = snapshot.data!.docs;
                          int total = snapshot.data!.docs.length;

                          // Accessing single QueryDocumentSnapshot and then using .data() getting its map.
                          return Container(
                            padding: EdgeInsets.only(top: getVerticalSize(20)),
                            height: MediaQuery.of(context).size.height * .740,
                            child: Align(
                              alignment: Alignment.center,
                              child: ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: total,
                                itemBuilder: (context, index) {
                                  final job = jobdata[index].data()!
                                      as Map<String, dynamic>;

                                  return Job_Card(job);
                                },
                              ),
                            ),
                          );

                          // return ListView(
                          //   children: snapshot.data!.docs
                          //       .map((DocumentSnapshot document) {
                          //     Map<String, dynamic> data =
                          //         document.data()! as Map<String, dynamic>;
                          //     return Job_Card_test();
                          //   }).toList(),
                          // );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
