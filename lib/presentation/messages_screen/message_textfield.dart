import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:path/path.dart' as Path;

class MessageTextField extends StatefulWidget {
  final String currentId;
  final String friendId;

  MessageTextField(this.currentId, this.friendId);

  @override
  _MessageTextFieldState createState() => _MessageTextFieldState();
}

class _MessageTextFieldState extends State<MessageTextField> {
  firebase_storage.FirebaseStorage storage =
      firebase_storage.FirebaseStorage.instance;
  TextEditingController _controller = TextEditingController();
  XFile? image;
  File? _photo;
  final ImagePicker picker = ImagePicker();

  //we can upload image from camera or from gallery based on parameter
  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      _photo = File(img!.path);
      uploadFile();
      // image = img;
    });
  }

  Future uploadFile() async {
    if (_photo == null) return;
    final fileName = Path.basename(_photo!.path);
    final destination = 'files/$fileName';

    try {
      final ref = firebase_storage.FirebaseStorage.instance
          .ref(destination)
          .child('file/');
      UploadTask _task = ref.putFile(_photo!);
      _task.snapshotEvents.listen((TaskSnapshot event) {
        var progress =
            (event.bytesTransferred.toDouble() / event.totalBytes.toDouble()) *
                100;
        print('progress $progress');
      });
      String url = await (await _task).ref.getDownloadURL();
      SendMessage("image", url);
    } catch (e) {
      print('error occured $e');
    }
  }

  // void myAlert() {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           shape:
  //               RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
  //           title: Text('Please choose media to select'),
  //           content: Container(
  //             height: MediaQuery.of(context).size.height / 6,
  //             child: Column(
  //               children: [
  //                 ElevatedButton(
  //                   //if user click this button, user can upload image from gallery
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                     getImage(ImageSource.gallery);
  //                   },
  //                   child: Row(
  //                     children: [
  //                       Icon(Icons.image),
  //                       Text('From Gallery'),
  //                     ],
  //                   ),
  //                 ),
  //                 ElevatedButton(
  //                   //if user click this button. user can upload image from camera
  //                   onPressed: () {
  //                     Navigator.pop(context);
  //                     getImage(ImageSource.camera);
  //                   },
  //                   child: Row(
  //                     children: [
  //                       Icon(Icons.camera),
  //                       Text('From Camera'),
  //                     ],
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }

  Future<void> SendMessage(String type, String message) async {
    _controller.clear();
    await FirebaseFirestore.instance
        .collection('users')
        .doc(widget.currentId)
        .collection('messages')
        .doc(widget.friendId)
        .collection('chats')
        .add({
      "senderId": widget.currentId,
      "receiverId": widget.friendId,
      "message": message,
      "type": type,
      "date": DateTime.now(),
    }).then((value) {
      FirebaseFirestore.instance
          .collection('users')
          .doc(widget.currentId)
          .collection('messages')
          .doc(widget.friendId)
          .set({
        'last_msg': type == "image" ? "คุณ: ได้ส่งรูปภาพ" : "คุณ: $message",
        'last_date': DateTime.now(),
        'isread': true
      });
    });

    await FirebaseFirestore.instance
        .collection('users')
        .doc(widget.friendId)
        .collection('messages')
        .doc(widget.currentId)
        .collection("chats")
        .add({
      "senderId": widget.currentId,
      "receiverId": widget.friendId,
      "message": message,
      "type": type,
      "date": DateTime.now(),
    }).then((value) {
      FirebaseFirestore.instance
          .collection('users')
          .doc(widget.friendId)
          .collection('messages')
          .doc(widget.currentId)
          .set({
        "last_msg": type == "image" ? "ได้ส่งรูปภาพ" : message,
        'last_date': DateTime.now(),
        'isread': false
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsetsDirectional.all(8),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: GestureDetector(
              onTap: () {
                // Navigator.pop(context);
                getImage(ImageSource.camera);
                // myAlert();
              },
              child: Container(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.teal,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5, right: 10),
            child: GestureDetector(
              onTap: () {
                // Navigator.pop(context);
                getImage(ImageSource.gallery);

                // myAlert();
                // SendMessage("image", "https://picsum.photos/250?image=9");
              },
              child: Container(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.image_outlined,
                  color: Colors.teal,
                ),
              ),
            ),
          ),

          Expanded(
              child: TextFormField(
            autofocus: true,
            controller: _controller,
            onFieldSubmitted: (value) {
              if (_controller.text != "") {
                SendMessage("text", _controller.text);
              }
            },
            decoration: InputDecoration(
                // labelText: "Type your Message",
                fillColor: Colors.grey[100],
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(width: 0),
                    gapPadding: 10,
                    borderRadius: BorderRadius.circular(25))),
          )),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: GestureDetector(
              onTap: () {
                if (_controller.text != "") {
                  SendMessage("text", _controller.text);
                }
              },
              child: Container(
                padding: EdgeInsets.all(8),
                child: Icon(
                  Icons.send,
                  color: Colors.teal,
                ),
              ),
            ),
          ),
          // SizedBox(
          //   width: 20,
          // ),
          // GestureDetector(
          //   onTap: () async {
          //     if (_controller.text != "") {
          //       SendMessage();
          //     }
          //   },
          //   child: Container(
          //     padding: EdgeInsets.all(8),
          //     decoration: BoxDecoration(
          //       shape: BoxShape.circle,
          //       color: Colors.blue,
          //     ),
          //     child: Icon(
          //       Icons.send,
          //       color: Colors.white,
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
