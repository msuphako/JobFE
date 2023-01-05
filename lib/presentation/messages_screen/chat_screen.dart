import 'package:firebase_auth/firebase_auth.dart';
import 'package:hires/auth.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/messages_screen/single_message.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'message_textfield.dart';

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
                          bool isMe =
                              snapshot.data.docs[index]['senderId'] == user.uid;
                          return SingleMessage(
                            message: snapshot.data.docs[index]['message'],
                            isMe: isMe,
                            time: '6:00',
                          );
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
