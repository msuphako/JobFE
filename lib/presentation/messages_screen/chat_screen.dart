import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hires/auth.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/messages_screen/single_message.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'message_textfield.dart';
import 'package:image_picker/image_picker.dart';

class ChatScreen extends StatefulWidget {
  static String id = "ChatScreen";
  final String friendId;
  final String name;

  ChatScreen({
    required this.friendId,
    required this.name,
  });
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  Future<void> read() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .collection('messages')
        .doc(widget.friendId)
        .set({
      'isread': true,
    }, SetOptions(merge: true));
  }

  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.teal600,
        title: Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Text(
              widget.name,
              style: TextStyle(fontSize: 20, color: Colors.white),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25))),
            child: StreamBuilder(
                stream: db
                    .collection("users")
                    .doc(user.uid)
                    .collection('messages')
                    .doc(widget.friendId)
                    .collection('chats')
                    .orderBy("date", descending: true)
                    .snapshots(),
                builder: (context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    if (snapshot.data.docs.length < 1) {
                      return Center(
                        child: Text("Say Hi"),
                      );
                    }
                    return ListView.builder(
                        itemCount: snapshot.data.docs.length,
                        reverse: true,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          read();
                          String time = '';
                          bool isMe =
                              snapshot.data.docs[index]['senderId'] == user.uid;
                          if (index % 4 == 0) {
                            Timestamp date = snapshot.data.docs[index]['date'];
                            DateTime dtime = date.toDate();
                            time = DateFormat.jm().format(dtime);
                          }

                          return SingleMessage(
                              message: snapshot.data.docs[index]['message'],
                              isMe: isMe,
                              type: snapshot.data.docs[index]['type'],
                              time: time);
                        });
                  }
                  return Center(child: CircularProgressIndicator());
                }),
          )),
          MessageTextField(user.uid, widget.friendId),
        ],
      ),
    );
  }
}
