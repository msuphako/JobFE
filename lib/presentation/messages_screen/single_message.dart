import 'package:flutter/material.dart';

class SingleMessage extends StatelessWidget {
  final String message;
  final String time;
  final bool isMe;
  SingleMessage({required this.message,required this.time, required this.isMe});
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
                constraints: BoxConstraints(maxWidth: 200),
                decoration: BoxDecoration(
                    color: isMe ? Colors.teal : Color.fromARGB(255, 230, 230, 230),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Text(
                  message,
                  style: TextStyle(
                    color: isMe ? Colors.white:Colors.black,
                  ),
                )
              ),
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
