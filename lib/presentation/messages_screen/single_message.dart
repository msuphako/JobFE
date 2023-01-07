import 'package:easy_image_viewer/easy_image_viewer.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/image.dart';

class SingleMessage extends StatelessWidget {
  final String message;
  final String type;
  final bool isMe;
  final String time;
  var img = FireStoreDataBase();

  SingleMessage(
      {required this.message,
      required this.type,
      required this.isMe,
      required this.time});
  @override
  Widget build(BuildContext context) {
    // print(img.getData());
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment:
              isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            type == "text"
                ? Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    constraints: BoxConstraints(maxWidth: 250),
                    decoration: BoxDecoration(
                        color: isMe
                            ? ColorConstant.teal600
                            : Color.fromARGB(255, 240, 240, 240),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Text(
                      message,
                      style: TextStyle(
                          color: isMe ? Colors.white : Colors.black,
                          fontSize: 18),
                    ))
                : GestureDetector(
                    onTap: () {
                      showImageViewer(context, Image.network(message).image,
                          swipeDismissible: false);
                    },
                    child: Container(
                      padding: EdgeInsets.all(10),
                      // margin: EdgeInsets.all(16),
                      constraints: BoxConstraints(maxWidth: 250),
                      child: Image.network(message),
                    ),
                  ),
            Container(
                padding: EdgeInsets.only(left: 12, right: 12),
                child: Text(
                  time,
                  style: TextStyle(color: Colors.black, fontSize: 13),
                )),
          ],
        ),
      ],
    );
  }
}
