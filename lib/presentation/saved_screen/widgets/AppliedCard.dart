import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hires/job.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/presentation/job_details1_screen/job_details1_screen.dart';

class AppliedCard extends StatefulWidget {
  Map<String, dynamic> appliedata;
  AppliedCard(this.appliedata);
  @override
  State<AppliedCard> createState() => AppliedCardState();
}

class AppliedCardState extends State<AppliedCard> {
  final user = FirebaseAuth.instance.currentUser!;
  var job = Job();
  fetchjobsdata() {
    Future<DocumentSnapshot> userData =
        FirebaseFirestore.instance.collection("users").doc(user.uid).get();
    return userData;
  }

  test() {
    return test;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Query jobpost = FirebaseFirestore.instance
        .collectionGroup('jobPost')
        .where("JobId", isEqualTo: widget.appliedata["JobId"]);
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return FutureBuilder<QuerySnapshot>(
        future: jobpost.get(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text("data ${snapshot.hasError}");
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasData) {
            var data = snapshot.data?.docs[0];
            print(data!["JobId"]);
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => JobDetails1Screen(data["JobId"])));
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
                    height: getVerticalSize(185),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              180.00,
                            ),
                            width: getHorizontalSize(500),
                            decoration: BoxDecoration(
                              color: isDark
                                  ? ColorConstant.gray90087
                                  : Color.fromARGB(255, 255, 255, 255),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 5,
                                  blurRadius: 5,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: getHorizontalSize(
                                40.00,
                              ),
                              top: getVerticalSize(
                                20.00,
                              ),
                              right: getHorizontalSize(
                                40.00,
                              ),
                              bottom: getVerticalSize(
                                10.00,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          height: getSize(
                                            46.00,
                                          ),
                                          width: getSize(
                                            46.00,
                                          ),
                                          margin: EdgeInsets.only(
                                            bottom: getVerticalSize(
                                              1.00,
                                            ),
                                          ),
                                          decoration: BoxDecoration(
                                            color: ColorConstant.whiteA700,
                                            borderRadius: BorderRadius.circular(
                                              getHorizontalSize(
                                                12.00,
                                              ),
                                            ),
                                          ),
                                          child: Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: EdgeInsets.all(0),
                                            color: ColorConstant.whiteA700,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  12.00,
                                                ),
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Align(
                                                  alignment: Alignment.center,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left: getHorizontalSize(
                                                        12.88,
                                                      ),
                                                      top: getVerticalSize(
                                                        12.00,
                                                      ),
                                                      right: getHorizontalSize(
                                                        13.86,
                                                      ),
                                                      bottom: getVerticalSize(
                                                        12.00,
                                                      ),
                                                    ),
                                                    child: Container(
                                                      height: getVerticalSize(
                                                        22.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        19.26,
                                                      ),
                                                      child: SvgPicture.asset(
                                                        ImageConstant.imgGroup5,
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: getHorizontalSize(
                                              16.00,
                                            ),
                                            top: getVerticalSize(
                                              2.00,
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                data["Title"],
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  fontSize: getFontSize(
                                                    20,
                                                  ),
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top: getVerticalSize(
                                                    3.00,
                                                  ),
                                                  right: getHorizontalSize(
                                                    10.00,
                                                  ),
                                                ),
                                                child: Text(
                                                  "Shell plc",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                    fontSize: getFontSize(
                                                      18,
                                                    ),
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          3.00,
                                        ),
                                        right: getHorizontalSize(
                                          3.00,
                                        ),
                                        bottom: getVerticalSize(
                                          24.00,
                                        ),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          job.DelSavedJob(
                                              user.uid, data["JobId"]);
                                          //  showAlert();
                                        },
                                        child: Container(
                                          height: getSize(
                                            20.00,
                                          ),
                                          width: getSize(
                                            20.00,
                                          ),
                                          child: Icon(Icons.delete,
                                              size: getSize(30),
                                              color: Colors.red),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        top: getVerticalSize(
                                          30.00,
                                        ),
                                        right: getHorizontalSize(
                                          4.00,
                                        ),
                                        bottom: getVerticalSize(10)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          "${Constants.currency}98,00/year",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(
                                          "1",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                            fontSize: getFontSize(
                                              16,
                                            ),
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
