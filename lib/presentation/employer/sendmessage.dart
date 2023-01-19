import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> SendMessage(
    String message, String currentId, String friendId) async {
  await FirebaseFirestore.instance
      .collection('users')
      .doc(currentId)
      .collection('messages')
      .doc(friendId)
      .collection('chats')
      .add({
    "senderId": currentId,
    "receiverId": friendId,
    "message": message,
    "type": 'text',
    "date": DateTime.now(),
  }).then((value) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(currentId)
        .collection('messages')
        .doc(friendId)
        .set({
      'last_msg': "คุณ: $message",
      'last_date': DateTime.now(),
      'isread': true
    });
  });

  await FirebaseFirestore.instance
      .collection('users')
      .doc(friendId)
      .collection('messages')
      .doc(currentId)
      .collection("chats")
      .add({
    "senderId": currentId,
    "receiverId": friendId,
    "message": message,
    "type": 'text',
    "date": DateTime.now(),
  }).then((value) {
    FirebaseFirestore.instance
        .collection('users')
        .doc(friendId)
        .collection('messages')
        .doc(currentId)
        .set({
      "last_msg": message,
      'last_date': DateTime.now(),
      'isread': false
    });
  });
}
