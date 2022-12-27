import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/home_screen/home_screen.dart';
import '../saved_screen/widgets/saved_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';

class SavedScreen extends StatefulWidget {
  @override
  State<SavedScreen> createState() => _SavedScreenState();
}

class _SavedScreenState extends State<SavedScreen>
    with SingleTickerProviderStateMixin {
  final user = FirebaseAuth.instance.currentUser!;
  var job = Job();
  List<Object> _datajobs = [];

  Future fetchjobsdata() async {
    List<String> jobslist = [];
    final QuerySnapshot result =
        await db.collection('users').doc(user.uid).collection("saved").orderBy("date",descending: true).get();
    final List<DocumentSnapshot> documents = result.docs;
    documents.forEach((element) async {
      Map<String, dynamic> data = element.data() as Map<String, dynamic>;
      jobslist.add(data['JobId']);
    });
    print(jobslist);
    var data = await db.collection("jobs").where("JobId", whereIn:jobslist).get();
    setState(() {
      _datajobs = List.from(data.docs.map((doc) => Job.fromSnapshot(doc)));
    });
  }

  @override
  void initState() {
    fetchjobsdata();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int total = _datajobs.length;
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
                Navigator.pushReplacementNamed(context, HomeScreen.id);
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
                            total != 0
                                ? "You saved $total Jobs 👍"
                                : "No save Jobs",
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
                        padding: EdgeInsets.only(top: getVerticalSize(20)),
                        height: MediaQuery.of(context).size.height * .740,
                        child: Align(
                          alignment: Alignment.center,
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: _datajobs.length,
                            itemBuilder: (context, index) {
                              return SaveJobCard(_datajobs[index] as Job);
                              // return SavedItemWidget();
                            },
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
    );
  }
}
