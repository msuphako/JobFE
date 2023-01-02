import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/home_screen/home_screen.dart';
import '../saved_screen/widgets/saved_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';

class ggs extends StatefulWidget {
  static String id = "ggs";

  @override
  State<ggs> createState() => _ggsState();
}

class _ggsState extends State<ggs> with SingleTickerProviderStateMixin {
  final user = FirebaseAuth.instance.currentUser!;
  var job = Job();

  List<String> SavedDocId = [];
  List<String> SavedJobId = [];

  @override
  void initState() {
    super.initState();
  }

  bool Isshow = false;
  callback() {
    setState(() {});
  }

  Getsavedata() {
    final Stream<QuerySnapshot> SavedData =
        db.collection('users').doc(user.uid).collection("saved").snapshots();
    return SavedData;
  }

  GetJobdata() async {
    List<String> ggt = [];
    final QuerySnapshot result =
        await db.collection('users').doc(user.uid).collection("saved").get();
    final List<DocumentSnapshot> documents = result.docs;
    documents.forEach((element) async {
      Map<String, dynamic> data = element.data() as Map<String, dynamic>;
      ggt.add(data['JobId']);
      SavedJobId.add(data["JobId"]);
      SavedDocId.add(element.id);
    });
    // FirebaseFirestore.instance
    //     .collection('users')
    //     .doc(user.uid)
    //     .collection("saved")
    //     .get()
    //     .then((QuerySnapshot querySnapshot) {
    //   querySnapshot.docs.forEach((doc) {
    //     ggt.add("dasda");
    //     // print(doc["JobId"]);
    //   });
    // });
    print(ggt);

    return await db
        .collectionGroup('jobPost')
        .where("JobId", whereIn: ggt)
        .get();
  }

  // gg() async {
  //   return db
  //       .collectionGroup('jobPost')
  //       .where("JobId", whereIn: SavedJobId)
  //       .get();
  // }

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
        body: FutureBuilder<dynamic>(
            future: GetJobdata(),
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasError) {
                return Align(
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
                      "No Save Job",
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
                );
                ;
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator();
              }
              var jobdata = snapshot.data!.docs;
              int total = snapshot.data!.docs.length;
              return Container(
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
                                    "",
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
                                    "You saved $total Jobs 👍",
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
                              Container(
                                padding:
                                    EdgeInsets.only(top: getVerticalSize(20)),
                                height:
                                    MediaQuery.of(context).size.height * .740,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: ListView.builder(
                                    physics: BouncingScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: total,
                                    itemBuilder: (context, index) {
                                      final job = jobdata[index].data()!
                                          as Map<String, dynamic>;
                                      return SaveJobCard(job, SavedDocId[index],
                                          this.callback);
                                    },
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
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }));
  }
}
