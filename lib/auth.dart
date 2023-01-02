import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/main.dart';

FirebaseAuth auth = FirebaseAuth.instance;
CollectionReference users = FirebaseFirestore.instance.collection('users');

class UserData {
  String id;
  final String name;
  UserData({this.id = '', required this.name});
  Map<String, dynamic> toJson() => {'id': id, 'name': name};
}

class Auth {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  get user => _auth.currentUser;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<void> sendPasswordResetEmail({
    required String email,
  }) async {
    await _auth.sendPasswordResetEmail(email: email);
  }

  Future signIn(String email, String pass, context) async {
    String errorMessage = "";

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()));
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: pass);
    } on FirebaseAuthException catch (e) {
      print(e);

      switch (e.code) {
        case "user-not-found":
          errorMessage = "ไม่พบผู้งาน";
          break;
        case "invalid-email":
          errorMessage = "อีเมลไม่ถูกต้อง";
          break;
        case "wrong-password":
          errorMessage = "รหัสผ่านไม่ถูกต้อง";
          break;
      }
    }
    if (errorMessage != "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: ColorConstant.red700,
          behavior: SnackBarBehavior.floating,
          content: Row(
            children: [
              Icon(
                Icons.warning_amber,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                errorMessage,
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      );
    }
    // Navigator.pushNamed(context, HomeScreen.id);
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  Future signUp(context,
      {required String email,
      required String password,
      required String name}) async {
    String errorMessage = "";
    bool chk = false;
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      addUser(user.uid, user.email, name);
    } on FirebaseAuthException catch (e) {
      print(e);
      switch (e.code) {
        case "weak-password":
          errorMessage = 'The password provided is too weak.';
          break;
        case 'email-already-in-use':
          errorMessage = "The account already exists for that email.";
          break;
        case "wrong-password":
          errorMessage = "รหัสผ่านไม่ถูกต้อง";
          break;
      }
    }
    if (errorMessage != "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: ColorConstant.red700,
          behavior: SnackBarBehavior.floating,
          content: Row(
            children: [
              Icon(
                Icons.warning_amber,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                errorMessage,
                style: TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
      );
    } else {
      Navigator.pop(context);
    }
  }

  Future Emp_signUp(
      {required String email,
      required String password,
      required String name}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      addEmpUser(user.uid, user.email, name);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future addUser(String id, String email, String name) {
    return users
        .doc(id)
        .set({
          'id': id,
          'email': email,
          'username': name,
          'usertype': "employee"
        })
        .then((value) => print("added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  Future addEmpUser(String id, String email, String name) {
    return users
        .doc(id)
        .set({
          'id': id,
          'email': email,
          'username': name,
          'usertype': "employer"
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
  // Future<User?> getUserNameFromUID(String uid) async {
  //   final docuser = FirebaseFirestore.instance.collection('users').doc(uid);
  //   final snapshot = await docuser.get();
  //   return User.fromJson(snapshot.data());
  // }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
