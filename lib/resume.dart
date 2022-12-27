import 'package:cloud_firestore/cloud_firestore.dart';

final db = FirebaseFirestore.instance;

class Resume {
  String? resume_id;
  String? title;
  String? gender;
  String? jobtype;
  String? occupation;
  String? age;
  String? exp;
  String? salary;
  String? location;
  String? create_date;
  Resume();
  Map<String, dynamic> toJson() => {
        "resume_id": resume_id,
        "gender": gender,
        "title": title,
        "jobtype": jobtype,
        "occupation": occupation,
        "age": age,
        "exp": exp,
        "salary": salary,
        "location": location,
        "create_date": create_date,
      };

  Resume.fromSnapshot(snapshot)
      : resume_id = snapshot.data()['resume_id'],
        title = snapshot.data()['title'],
        gender = snapshot.data()['gender'],
        jobtype = snapshot.data()['jobtype'],
        occupation = snapshot.data()['occupation'],
        age = snapshot.data()['age'],
        exp = snapshot.data()['exp'],
        salary = snapshot.data()['salary'],
        location = snapshot.data()['location'],
        create_date = snapshot.data()['create_date'];
}
