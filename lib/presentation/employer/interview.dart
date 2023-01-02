import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/employer/widget/applicationcard.dart';
import 'package:hires/presentation/employer/widget/job_card.dart';
import 'package:hires/presentation/home_screen/home_screen.dart';
import 'package:hires/presentation/saved_screen/widgets/SaveCard.dart';
import '../saved_screen/widgets/saved_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';

import 'widget/Interviewcard.dart';

class InterviewScreen extends StatefulWidget {
  static String id = "InterviewScreen";

  @override
  State<InterviewScreen> createState() => _InterviewScreenState();
}

final user = FirebaseAuth.instance.currentUser!;

class _InterviewScreenState extends State<InterviewScreen>
    with SingleTickerProviderStateMixin {
  final Stream<QuerySnapshot> savedata = db
      .collectionGroup("applied")
      .where("eid", isEqualTo: user.uid)
      .where("status", isEqualTo: "รอการนัดสำภาษณ์")
      .where("status", isEqualTo: "รอการสำภาษณ์")
      .snapshots();

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "การนัดสัมภาษณ์",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: getFontSize(
              24,
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
                        stream: savedata,
                        builder: (BuildContext context,
                            AsyncSnapshot<QuerySnapshot> snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.waiting) {
                            return Center(child: CircularProgressIndicator());
                          }
                          if (snapshot.hasData) {
                            var appdata = snapshot.data!.docs;
                            int total = snapshot.data!.docs.length;

                            // Accessing single QueryDocumentSnapshot and then using .data() getting its map.
                            return Container(
                              padding:
                                  EdgeInsets.only(top: getVerticalSize(20)),
                              height: MediaQuery.of(context).size.height * .740,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: total,
                                  itemBuilder: (context, index) {
                                    final app = appdata[index].data()!
                                        as Map<String, dynamic>;

                                    return InterviewCard(
                                        app, appdata[index].id);
                                  },
                                ),
                              ),
                            );
                          } else {
                            return Center(child: Text("no saved job"));
                          }

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
