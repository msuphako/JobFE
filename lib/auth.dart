import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'package:hires/main.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

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
    try {
      await _auth.sendPasswordResetEmail(email: email);
    } on Exception catch (e) {
      print(e);
    }
  }

  Future SignIn(String email, String pass, context) async {
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

  void sendpasswordreset(String email) {
    auth.sendPasswordResetEmail(email: email);
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

  Future<User?> signInWithGoogle() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    if (kIsWeb) {
      GoogleAuthProvider authProvider = GoogleAuthProvider();

      try {
        final UserCredential userCredential =
            await auth.signInWithPopup(authProvider);

        user = userCredential.user;
        addUser(user!.uid, '${user.email}', '${user.displayName}');
      } catch (e) {
        print(e);
      }
    } else {
      final GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();

      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );

        try {
          final UserCredential userCredential =
              await auth.signInWithCredential(credential);

          user = userCredential.user;
          addUser(user!.uid, '${user.email}', '${user.displayName}');
        } on FirebaseAuthException catch (e) {
          print(e);
          if (e.code == 'account-exists-with-different-credential') {
            // ...
          } else if (e.code == 'invalid-credential') {
            // ...
          }
        } catch (e) {
          // ...
        }
      }
    }

    return user;
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
      await user.sendEmailVerification();
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
          context, MaterialPageRoute(builder: (context) => MainPage()));
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
      await user.sendEmailVerification();
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
          context, MaterialPageRoute(builder: (context) => MainPage()));
    }
  }

  test() async {
    String? token = await FirebaseMessaging.instance.getToken();
    print("token is $token");
  }

  Future addUser(String id, String email, String name) async {
    final snapshot = await FirebaseFirestore.instance
        .collection('users')
        .where('id', isEqualTo: id)
        .get();
    if (snapshot.size == 0) {
      return users.doc(id).set({
        'id': id,
        'email': email,
        'username': name,
        'usertype': "employee",
        'imgurl': ""
      }).then((value) async {
        final snapshot = await FirebaseFirestore.instance
            .collectionGroup('resume')
            .where('uid', isEqualTo: id)
            .get();
        if (snapshot.size == 0) {
          print('it does not exist');
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
        } else {
          print('it exist');
          return;
        }
      }).catchError((error) => print("Failed to add user: $error"));
    }
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
    // _googleSignIn.disconnect();
    await FirebaseAuth.instance.signOut();
  }
}
