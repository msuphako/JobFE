import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/saved_screen/widgets/InterviewCard.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';

class InterviewEmployeeScreen extends StatefulWidget {
  static String id = "InterviewEmployeeScreen";

  @override
  State<InterviewEmployeeScreen> createState() =>
      _InterviewEmployeeScreenState();
}

final user = FirebaseAuth.instance.currentUser!;

class _InterviewEmployeeScreenState extends State<InterviewEmployeeScreen>
    with SingleTickerProviderStateMixin {
  final Stream<QuerySnapshot> savedata = db
      .collectionGroup('applied')
      .where("uid", isEqualTo: user.uid)
      .where('status', whereIn: ["เสร็จสิ้น", "รอการสำภาษณ์"])
      .orderBy("date", descending: true)
      .snapshots();

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "การสัมภาษณ์",
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
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: StreamBuilder<QuerySnapshot>(
            stream: savedata,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                print(user.uid);
                print(snapshot.error);
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasData) {
                var appliedata = snapshot.data!.docs;
                int total = snapshot.data!.docs.length;
                // Accessing single QueryDocumentSnapshot and then using .data() getting its map.
                return Container(
                  height: MediaQuery.of(context).size.height * .850,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: total,
                      itemBuilder: (context, index) {
                        final applied =
                            appliedata[index].data()! as Map<String, dynamic>;
                        return InterviewEmpoyeeCard(applied);
                      },
                    ),
                  ),
                );
              } else {
                return Center(child: Text("no job"));
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
        ),
      ),
    );
  }
}
