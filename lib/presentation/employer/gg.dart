import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/utils/math_utils.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/employer/widget/job_card.dart';
import 'package:hires/presentation/homepage_3_screen/widgets/group568_item_widget.dart';

class gg extends StatefulWidget {
  static String id = "gg";

  @override
  State<gg> createState() => _gg();
}

class _gg extends State<gg> {
  final Stream<QuerySnapshot> _usersStream =
      db.collectionGroup('saved').snapshots();
  final Stream<QuerySnapshot> gg = db.collectionGroup('jobPost').snapshots();
  Stream<List<Job>> read() =>
      db.collection("jobPost").snapshots().map((snapshot) =>
          snapshot.docs.map((doc) => Job.fromSnapshot(doc.data())).toList());

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _usersStream,
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        }
        var docs = snapshot.data!.docs;

        // Accessing single QueryDocumentSnapshot and then using .data() getting its map.
        final user = docs[0].data()! as Map<String, dynamic>;
        // return Container(
        //   padding: EdgeInsets.only(top: getVerticalSize(20)),
        //   height: MediaQuery.of(context).size.height * .740,
        //   child: Align(
        //     alignment: Alignment.center,
        //     child: ListView.builder(
        //       physics: BouncingScrollPhysics(),
        //       shrinkWrap: true,
        //       itemCount: 3,
        //       itemBuilder: (context, index) {
        //         return Job_Card_test();
        //         // return SavedItemWidget();
        //       },
        //     ),
        //   ),
        // );
        return StreamBuilder<QuerySnapshot>(
            stream: gg,
            builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> gg) {
              if (gg.connectionState == ConnectionState.waiting) {
                return Text("Loading");
              }
              var jobdata = gg.data!.docs;
              var job = jobdata[0].data()! as Map<String, dynamic>;
              print(job['Title']);
              return ListView(
                children: snapshot.data!.docs.map((DocumentSnapshot document) {
                  Map<String, dynamic> data =
                      document.data()! as Map<String, dynamic>;
                  return Text(user["JobId"]);
                }).toList(),
              );
            });
      },
    );
  }
}
