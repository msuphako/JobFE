import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cron/cron.dart';

final db = FirebaseFirestore.instance;

class Job {
  String? JobId;
  var Description;
  String? Jobtype;
  String? Location;
  String? Title;
  Timestamp? created_at;
  String? Age;
  String? Exp;
  String? Gender;
  String? featured;
  Job();
  Map<String, dynamic> toJson() => {
        "JobId": JobId,
        "Description": Description,
        "Jobtype": Jobtype,
        "Location": Location,
        "Title": Title,
        "created_at": created_at,
        "Age": Age,
        "Exp": Exp,
        "Gender": Gender,
        "featured": featured
      };

  Job.fromSnapshot(snapshot)
      :
        // JobId = snapshot.data()['JobId'],
        JobId = snapshot.data()['JobId'],
        Description = snapshot.data()['Description'],
        Jobtype = snapshot.data()['Jobtype'],
        Location = snapshot.data()['Location'],
        Title = snapshot.data()['Title'],
        Gender = snapshot.data()['Requirements']['Gender'],
        Age = snapshot.data()['Requirements']['Age'],
        Exp = snapshot.data()['Requirements']['Exp'],
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

  Future<bool> AppliedJob(String uid, String JobId, String title) async {
    var col = FirebaseFirestore.instance
        .collectionGroup('jobPost')
        .where('JobId', isEqualTo: JobId);
    var snapshot = await col.get();
    String? eid = snapshot.docs[0].reference.parent.parent?.id;
    // print(eid);
    final QuerySnapshot result = await db
        .collectionGroup("applied")
        .where('JobId', isEqualTo: JobId)
        .where('uid', isEqualTo: uid)
        .get();

    final List<DocumentSnapshot> documents = result.docs;

    if (documents.length > 0) {
      print("exist");
      return true;
    } else {
      await db
          .collection('users')
          .doc(eid)
          .collection('jobPost')
          .doc(JobId)
          .collection("applied")
          .add({
        "title": title,
        "JobId": JobId,
        "eid": eid,
        "uid": uid,
        "status": "รอการตอบกลับ",
        "interview_date": "ยังไม่ได้กำหนดวัน",
        "date": DateTime.now(),
      });
      return false;
    }
  }

  // Future<void> DelappliedJob(String uid, String? JobId) async {
  //   // print(JobId);
  //   var result = await db
  //       .collectionGroup("applied")
  //       .where('JobId', isEqualTo: JobId)
  //       .where('uid', isEqualTo: uid)
  //       .get();
  //   var snapshot = await result;
  //   String? applied_id = snapshot.docs[0].reference.id;
  //   String? eid = snapshot.docs[0].reference.parent.parent?.parent.parent?.id;

  //   // print(eid);
  //   await db
  //       .collection('users')
  //       .doc(eid)
  //       .collection('jobPost')
  //       .doc(JobId)
  //       .collection('applied')
  //       .doc(applied_id)
  //       .delete();
  // }
  Future<void> DelSavedJob(String uid, String? DocId) async {
    print("DociD $DocId");
    await db
        .collection('users')
        .doc(uid)
        .collection('saved')
        .doc(DocId)
        .delete();
  }

  autorun() {
    final cron = Cron();
    cron.schedule(Schedule.parse('*/5 * * * * *'), () async {
      print('Runs every Five seconds');
    });
  }

  Future<void> CreateJob({
    required String id,
    required String title,
    required String detail,
    required String jobtype,
    required String province,
    required String salary,
    required DateTime startdate,
    required DateTime enddate,
    required List<String> description,
    required Map Requirements,
  }) async {
    await db.collection('users').doc(id).collection('jobPost').add({
      "eid": id,
      "Title": title,
      "Detail": detail,
      "Description": description,
      "Jobtype": jobtype,
      "Location": province,
      "Requirements": Requirements,
      "total": 0,
      "salary": salary,
      "start_date": startdate,
      "due_date": enddate,
      "status": "กำลังเปิดรับสมัคร",
      "created_at": DateTime.now(),
    }).then((value) {
      FirebaseFirestore.instance
          .collection('users')
          .doc(id)
          .collection('jobPost')
          .doc(value.id)
          .set({
        "JobId": value.id,
      }, SetOptions(merge: true));
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
