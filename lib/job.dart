import 'package:cloud_firestore/cloud_firestore.dart';

final db = FirebaseFirestore.instance;

class Job {
  String? JobId;
  String? Description;
  String? Jobtype;
  String? Location;
  String? Title;
  Timestamp? created_at;
  String? featured;
  Job();
  Map<String, dynamic> toJson() => {
        // "JobId": JobId,
        "Description": Description,
        "Jobtype": Jobtype,
        "Location": Location,
        "Title": Title,
        "created_at": created_at,
        "featured": featured
      };

  Job.fromSnapshot(snapshot)
      :
        // JobId = snapshot.data()['JobId'],
        Description = snapshot.data()['Description'],
        Jobtype = snapshot.data()['Jobtype'],
        Location = snapshot.data()['Location'],
        Title = snapshot.data()['Title'],
        created_at = snapshot.data()['created_at'];

  Future<bool> Savejob(String uid, String JobId) async {
    final QuerySnapshot result = await db
        .collection('users')
        .doc(uid)
        .collection("saved")
        .where('JobId', isEqualTo: JobId)
        .get();

    final List<DocumentSnapshot> documents = result.docs;

    if (documents.length > 0) {
      print("exist");
      return true;
    } else {
      await db.collection('users').doc(uid).collection('saved').add({
        "JobId": JobId,
        "date": DateTime.now(),
      });
      return false;
    }
  }

  Future<void> DelSavedJob(String uid, String? JobId) async {
    print(uid);
    await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .collection('saved')
        .where("JobId" == JobId)
        .get()
        .then((value) {
      // print(value.docs[0]);
    });
  }

  Future<void> CreateJob({
    required String id,
    required String title,
    required String description,
    required String jobtype,
    required String province,
  }) async {
    await db.collection('users').doc(id).collection('jobPost').add({
      "Title": title,
      "Description": description,
      "Jobtype": jobtype,
      "Location": "text",
      "created_at": DateTime.now(),
    }).then((value) {
      // FirebaseFirestore.instance
      //     .collection('users')
      //     .doc(id)
      //     .collection('jobPost')
      //     .doc(value.id)
      //     .add({
      //   "JobId": "value.id",
      // });
    });
  }
  // Future<void> ShowSave(String uid) async {
  //   List<String> jobs = [];
  //   final QuerySnapshot result =
  //       await db.collection('users').doc(uid).collection("saved").get();
  //   final List<DocumentSnapshot> documents = result.docs;

  //   documents.forEach((element) async {
  //     Map<String, dynamic> data = element.data() as Map<String, dynamic>;
  //     jobs.add(data['JobId']);
  //   });

  //   var data = await db.collection("jobs").where("JobID",whereIn: jobs).get();

  // }
}
