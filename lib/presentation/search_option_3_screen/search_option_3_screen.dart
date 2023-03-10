import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/utils/color_constant.dart';
import 'package:hires/core/utils/math_utils.dart';
import 'package:hires/presentation/messages_screen/chat_screen.dart';

import '../search_result_2_screen/widgets/JobCard.dart';

class SearchJobScreen extends StatefulWidget {
  static String id = "SearchJobScreen";
  var uid;
  // SearchJobScreen(this.uid);

  @override
  _SearchJobScreenState createState() => _SearchJobScreenState();
}

class _SearchJobScreenState extends State<SearchJobScreen> {
  TextEditingController searchController = TextEditingController();
  List<Map> searchResult = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
  }

  void onSearch(search) async {
    setState(() {
      searchResult = [];
    });
    await FirebaseFirestore.instance
        .collectionGroup('jobPost')
        .where('status', isEqualTo: 'กำลังเปิดรับสมัคร')
        .where('Title',
            isGreaterThanOrEqualTo: search,
            isLessThan: search.substring(0, search.length - 1) +
                String.fromCharCode(search.codeUnitAt(search.length - 1) + 1))
        .get()
        .then((value) {
      if (value.docs.length < 1) {
        setState(() {
          isLoading = false;
        });
        return;
      }
      value.docs.forEach((job) {
        if (job.data()['status'] == "กำลังเปิดรับสมัคร") {
          searchResult.add(job.data());
        }
      });
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ค้นหางาน"),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: searchController,
                    onChanged: (value) {
                      onSearch(searchController.text);
                      if (searchController.text == "") isLoading = true;
                    },
                    decoration: InputDecoration(
                      hintText: 'ระบุชื่องาน',
                      hintStyle: TextStyle(
                        fontSize: getFontSize(
                          15.0,
                        ),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                          top: getVerticalSize(
                            30.07,
                          ),
                          left: getHorizontalSize(12),
                          right: getHorizontalSize(12)),
                    ),
                    style: TextStyle(
                      fontSize: getFontSize(
                        15.0,
                      ),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  // child: TextFormField(
                  //   controller: searchController,
                  //   onChanged: (value) {
                  //     onSearch(searchController.text);
                  //   },
                  //   decoration: InputDecoration(
                  //       hintText: "type username....",
                  //       border: OutlineInputBorder(
                  //           borderRadius: BorderRadius.circular(10))),
                  // ),
                ),
              ),
            ],
          ),
          if (searchResult.length > 0)
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: getVerticalSize(10)),
                shrinkWrap: true,
                itemCount: searchResult.length,
                itemBuilder: (context, index) {
                  return FutureBuilder<DocumentSnapshot>(
                      future: FirebaseFirestore.instance
                          .collection('users')
                          .doc(searchResult[index]['eid'])
                          .get(),
                      builder: (context, AsyncSnapshot snapshot) {
                        if (snapshot.hasError) {
                          return Text('Something went wrong');
                        }

                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return Center(child: CircularProgressIndicator());
                        }

                        Map<String, dynamic> data =
                            snapshot.data!.data() as Map<String, dynamic>;
                        final job =
                            Map<String, dynamic>.from(searchResult[index]);
                        return JobCardSearch(job, data);
                      });
                },
              ),
            )
          // Expanded(
          //     child: ListView.builder(
          //         itemCount: searchResult.length,
          //         shrinkWrap: true,
          //         itemBuilder: (context, index) {
          //           return GestureDetector(
          //             onTap: () {},
          //             child: ListTile(
          //               // leading: CircleAvatar(
          //               //   child: Image.network(searchResult[index]['image']),
          //               // ),
          //               title: Text(
          //                 searchResult[index]['Title'],
          //                 style: TextStyle(
          //                     fontSize: 18.0,
          //                     fontWeight: FontWeight.w400,
          //                     fontFamily: "Poppins"),
          //               ),
          //               subtitle: Text(
          //                 searchResult[index]['salary'],
          //                 style: TextStyle(
          //                     fontSize: 16.0,
          //                     fontWeight: FontWeight.w400,
          //                     fontFamily: "Poppins"),
          //               ),

          //               trailing: IconButton(
          //                   onPressed: () {},
          //                   icon: Icon(
          //                     Icons.message,
          //                     color: ColorConstant.teal600,
          //                   )),
          //             ),
          //           );
          //         }))
          else if (isLoading == false)
            Center(
              child: Text(
                "ไม่พบข้อมูล",
                style: TextStyle(fontSize: 16),
              ),
            )
        ],
      ),
    );
  }
}
