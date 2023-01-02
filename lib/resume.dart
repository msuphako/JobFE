import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hires/presentation/employer/jobapplication.dart';

final db = FirebaseFirestore.instance;

class Resume {
  String? resume_id;
  String? title;
  String? gender;
  String? jobtype;
  // String? occupation;
  String? age;
  // String? salary;
  String? location;
  String? create_at;
  Resume();
  Map<String, dynamic> toJson() => {
        "resume_id": resume_id,
        "gender": gender,
        "title": title,
        "jobtype": jobtype,
        // "occupation": occupation,
        "age": age,
        // "salary": salary,
        "location": location,
        "create_date": create_at,
      };

  Resume.fromSnapshot(snapshot)
      : resume_id = snapshot.data()['resume_id'],
        title = snapshot.data()['title'],
        gender = snapshot.data()['gender'],
        jobtype = snapshot.data()['jobtype'],
        // occupation = snapshot.data()['occupation'],
        age = snapshot.data()['age'],
        // salary = snapshot.data()['salary'],
        location = snapshot.data()['location'],
        create_at = snapshot.data()['create_at'];
  Future<String> GetResume(uid) async {
    final QuerySnapshot<Map<String, Object?>> result =
        await db.collection("resume").where('uid', isEqualTo: uid).get();
    List<Object?> data = result.docs.map((e) {
      return e.data();
    }).toList();
    Map<dynamic, dynamic> resumedata = data[0] as Map;
    // print(resumedata["gender"]);
    return resumedata["gender"];
  }

  Future<void> test(context) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Row(
          children: const [
            Icon(Icons.shopping_bag),
            SizedBox(
              width: 10,
            ),
            Text('Product added to my cart !')
          ],
        ),
      ),
    );
  }

  Future<void> CreateResume(
    String uid,
    String fullname,
    String gender,
    String date,
    String month,
    String year,
    String age,
    String province,
    String address,
    String email,
    String phone,
    String skills,
    List<String> drivingskill,
    String companyname,
    String duration,
    String position,
    String jobdetail,
    List<String> jobwanted,
    String jobtype,
    String province_work,
  ) async {
    final QuerySnapshot<Map<String, Object?>> result = await db
        .collection("users")
        .doc(uid)
        .collection("resume")
        .where('uid', isEqualTo: uid)
        .get();

    final List<DocumentSnapshot> documents = result.docs;

    if (documents.length > 0) {
      // print("exist");
      List<Object?> data = result.docs.map((e) {
        return e.data();
      }).toList();
      Map<dynamic, dynamic> resumedata = data[0] as Map;
      // print(resumedata["resume_id"]);
      await db
          .collection("users")
          .doc(uid)
          .collection('resume')
          .doc(resumedata["resume_id"])
          .set({
        "uid": uid,
        "title": "null",
        "dateofbirth": {
          "date": date,
          "month": month,
          "year": year,
        },
        "fullname": fullname,
        "gender": gender,
        "age": age,
        "location": province,
        "address": address,
        "email": email,
        "phone": phone,
        "skills": skills,
        "drivingskill": drivingskill,
        "companyname": companyname,
        "duration": duration,
        "position": position,
        "jobdetail": jobdetail,
        "jobwanted": jobwanted,
        "jobtype": jobtype,
        "province_work": province_work,
        "last_edit": DateTime.now(),
      }, SetOptions(merge: true));
    } else {
      await db.collection("users").doc(uid).collection('resume').add({
        "uid": uid,
        "title": "null",
        "dateofbirth": {
          "date": date,
          "month": month,
          "year": year,
        },
        "fullname": fullname,
        "gender": gender,
        "age": age,
        "location": province,
        "address": address,
        "email": email,
        "phone": phone,
        "skills": skills,
        "drivingskill": drivingskill,
        "companyname": companyname,
        "duration": duration,
        "position": position,
        "jobdetail": jobdetail,
        "jobwanted": jobwanted,
        "jobtype": jobtype,
        "province_work": province_work,
        "create_at": DateTime.now(),
      }).then((value) {
        FirebaseFirestore.instance
            .collection("users")
            .doc(uid)
            .collection('resume')
          ..doc(value.id).set({
            "resume_id": value.id,
          }, SetOptions(merge: true));
      });
    }
  }
}
