import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';

class SingleMessage extends StatelessWidget {
  final String message;
  final String time;
  final bool isMe;
  SingleMessage(
      {required this.message, required this.time, required this.isMe});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(16),
                constraints: BoxConstraints(maxWidth: 250),
                decoration: BoxDecoration(
                    color: isMe
                        ? ColorConstant.teal600
                        : Color.fromARGB(255, 240, 240, 240),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Text(
                  message,
                  style: TextStyle(
                      color: isMe ? Colors.white : Colors.black, fontSize: 18),
                )),
            // Container(
            //     margin: EdgeInsets.all(1),
            //   child:Text(
            //       time,
            //       style: TextStyle(
            //         color:Colors.black,
            //       ),
            //     )
            // ),
          ],
        ),
      ],
    );
  }
}
