import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/main.dart';
import 'package:hires/presentation/employer/employer_home.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'presentation/home_screen/home_screen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

FirebaseMessaging messaging = FirebaseMessaging.instance;
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

  void changePassword(String email, String password, context) async {
    //Create field for user to input old password

    //pass the password here

    try {
      // await FirebaseAuth.instance.signInWithEmailAndPassword(
      //   email: email,
      //   password: password,
      // );
      user.updatePassword(password).then((_) {
        Navigator.pop(context);
      }).catchError((error) {
        print("Password can't be changed" + error.toString());
        if (error.code == 'weak-password') {
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
                    "รหัสผ่านสิ้นเกินไป",
                    style: TextStyle(fontSize: 16),
                  )
                ],
              ),
            ),
          );
          print('รหัสผ่านสิ้นเกินไป');
        }
      });
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
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
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }

  Future Emp_signUp(context,
      {required String email,
      required String password,
      required String name,
      required String companyname}) async {
    String errorMessage = "";
    bool chk = false;
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      addEmpUser(user.uid, user.email, name, companyname);
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
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => EmpHomeScreen()));
    }
  }

  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );

  Future<void> test() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  Future addUser(String id, String email, String name) {
    return users.doc(id).set({
      'id': id,
      'email': email,
      'username': name,
      'usertype': "employee",
      'imgurl': ""
    }).then((value) {
      FirebaseFirestore.instance
          .collection("users")
          .doc(id)
          .collection('resume')
          .add({
        "uid": id,
        "title": "",
        "dateofbirth": {
          "date": '',
          "month": '',
          "year": '',
        },
        "fullname": '',
        "gender": '',
        "age": '',
        "location": '',
        "address": '',
        "email": email,
        "phone": '',
        "skills": '',
        "drivingskill": [],
        "companyname": '',
        "duration": '',
        "position": '',
        "jobdetail": '',
        "jobwanted": [],
        "jobtype": '',
        "province_work": '',
        "imgurl": "",
        "score": {'userdata': 0, 'skill': 0, 'exp': 0, 'jobwanted': 0},
        "status": false,
        "create_at": DateTime.now(),
      }).then((value) {
        FirebaseFirestore.instance
            .collection("users")
            .doc(id)
            .collection('resume')
          ..doc(value.id).set({
            "resume_id": value.id,
          }, SetOptions(merge: true));
      });
    }).catchError((error) => print("Failed to add user: $error"));
  }

  Future addEmpUser(String id, String email, String name, String companyname) {
    return users
        .doc(id)
        .set({
          'id': id,
          'email': email,
          'username': name,
          'companyname': companyname,
          'detail': '',
          'howtoapply': '',
          'address': '',
          'province': '',
          'code': '',
          'phone': '',
          'wepsite': '',
          'imgurl': "",
          'usertype': "employer"
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }
}
