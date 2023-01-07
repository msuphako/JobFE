import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';

class FireStoreDataBase {
  String? downloadURL;

  Future<String?> getData() async {
    try {
      await downloadURLExample();
      return downloadURL;
    } catch (e) {
      debugPrint("Error - $e");
      return null;
    }
  }

  Future<String?> downloadURLExample() async {
    downloadURL = await FirebaseStorage.instance
        .ref()
        .child("istockphoto-612716462-612x612.jpg")
        .getDownloadURL();

    return downloadURL.toString();
    // downloadURL.toString();
  }
}
