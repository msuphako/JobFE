
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
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
  Future signIn(String email,String pass,context) async {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => Center(child: CircularProgressIndicator()));
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: pass);
    } on FirebaseAuthException catch (e) {
      print(e);
    }
    // Navigator.pushNamed(context, HomeScreen.id);
    navigatorKey.currentState!.popUntil((route) => route.isFirst);
  }

  Future signUp(
      {required String email,
      required String password,
      required String name}) async {
    try {
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      addUser(user.uid, user.email, name);
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
  Future Emp_signUp(
      {required String email,
      required String password,
      required String name
      }) async {
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
        .set({'id': id, 'email': email, 'username': name,'usertype':"employee"})
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }
  Future addEmpUser(String id, String email, String name) {
    return users
        .doc(id)
        .set({'id': id, 'email': email, 'username': name ,'usertype':"employer"})
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
