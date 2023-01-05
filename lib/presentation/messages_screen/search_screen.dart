import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/utils/color_constant.dart';
import 'package:hires/core/utils/math_utils.dart';
import 'package:hires/presentation/messages_screen/chat_screen.dart';

class SearchScreen extends StatefulWidget {
  var uid;
  String search;
  SearchScreen(this.uid, this.search);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchController = TextEditingController();
  List<Map> searchResult = [];
  bool isLoading = false;
  @override
  void initState() {
    searchController.text = widget.search;
    onSearch(widget.search);
    super.initState();
  }

  void onSearch(search) async {
    setState(() {
      searchResult = [];
      isLoading = true;
    });
    await FirebaseFirestore.instance
        .collection('users')
        .where('username',
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
      value.docs.forEach((user) {
        if (user.data()['id'] != widget.uid) {
          searchResult.add(user.data());
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
        title: Text("ค้นหาผู้คน"),
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
                    },
                    decoration: InputDecoration(
                      hintText: 'ค้นหา',
                      hintStyle: TextStyle(
                        fontSize: getFontSize(
                          15.0,
                        ),
                      ),
                      isDense: true,
                      contentPadding: EdgeInsets.only(
                          top: getVerticalSize(
                            16.07,
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
          // if (searchResult.length == 0)
          //   StreamBuilder<Object>(
          //       stream:
          //           FirebaseFirestore.instance.collection('users').snapshots(),
          //       builder: (context, AsyncSnapshot snapshot) {
          //         if (snapshot.hasData) {
          //           var doc = snapshot.data[0];
          //           print(doc["username"]);
          //           return Center(child: Text("No data"));

          //           // return Expanded(
          //           //     child: ListView.builder(
          //           //         itemCount: snapshot.data?.docs.length,
          //           //         shrinkWrap: true,
          //           //         itemBuilder: (context, index) {
          //           //           var data = snapshot.data?.docs[index];
          //           //           return ListTile(
          //           //             // leading: CircleAvatar(
          //           //             //   child: Image.network(searchResult[index]['image']),
          //           //             // ),
          //           //             title: Text(data[index]['username']),
          //           //             subtitle: Text(data[index]['email']),
          //           //             trailing: IconButton(
          //           //                 onPressed: () {
          //           //                   setState(() {
          //           //                     searchController.text = "";
          //           //                   });
          //           //                   Navigator.push(
          //           //                       context,
          //           //                       MaterialPageRoute(
          //           //                           builder: (context) => ChatScreen(
          //           //                                 friendId: data[index]['id'],
          //           //                               )));
          //           //                 },
          //           //                 icon: Icon(Icons.message)),
          //           //           );
          //           //         }));
          //         } else {
          //           return Center(child: Text("No data"));
          //         }
          //       }),
          if (searchResult.length > 0)
            Expanded(
                child: ListView.builder(
                    itemCount: searchResult.length,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ChatScreen(
                                        friendId: searchResult[index]['id'],
                                        name: searchResult[index]['username'],
                                      )));
                        },
                        child: ListTile(
                          // leading: CircleAvatar(
                          //   child: Image.network(searchResult[index]['image']),
                          // ),
                          title: Text(
                            searchResult[index]['username'],
                            style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins"),
                          ),
                          subtitle: Text(
                            searchResult[index]['email'],
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Poppins"),
                          ),

                          trailing: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ChatScreen(
                                              friendId: searchResult[index]
                                                  ['id'],
                                              name: searchResult[index]
                                                  ['username'],
                                            )));
                              },
                              icon: Icon(
                                Icons.message,
                                color: ColorConstant.teal600,
                              )),
                        ),
                      );
                    }))
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
