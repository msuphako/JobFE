const functions = require("firebase-functions");


const admin = require('firebase-admin');


admin.initializeApp();

exports.sendNotification = functions.region('asia-southeast1').firestore.document('/users/{userId}/messages/{messageId}/chats/{chatId}')
.onCreate((snap, context) => {
    const chats = snap.data();
    const senderid = chats.senderId;
    const receiverid = chats.receiverId;
    const Issender = chats.sender;
    const type = chats.type;
    const collectionRef = admin.firestore().collection('users').doc(senderid);
collectionRef.get()
.then(doc => {

    if (!doc.exists) {
        return;
    }
    // console.log(doc.data());
    senderdata = doc.data();
    const collectionRef = admin.firestore().collection('users').doc(receiverid);
    collectionRef.get().then(doc=>{
        // console.log(doc.data());
        receiver = doc.data();
        const data = {
            message: {
              token: receiver.token,
              notification: {
                title:type=="text"? senderdata.username+" ได้ส่งข้อความถึงคุณ" :senderdata.username+" ได้ส่งรูปภาพถึงคุณ",
                body:type=="text"? chats.message:"",
              },
              data:{
                Nick : "Mario",
                body : "great match!",
                Room : "PortugalVSDenmark"
              }
            },
          };
        if(Issender==true){
          return admin.messaging().send(data.message);

        }
    })

    
})



});

// exports.fcmTester = functions.firestore.document('/messages/{documentId}')
// .onUpdate((change, context) => {
//     const after = change.after.data();

// token = 'ffTq2s-cS32MPBLJwbzpIU:APA91bG3E6XvEL_itxQHJMw-_UfhzmnhA-Cwj2RU6JFWAsSW4lrU81FtttR5d6qCvF3Ud0AzL7phPQ7zMgYhyTOlloKXqWZ-X-N0HB0LcEGtt0WxX5utJsvEZFo15jk5lDpuMwTu2RU7';

// const data = {
//     message: {
//       token: token,
//       notification: {
//         title: "Notification Title "+after.status,
//         body: "Notification Body ",
//       },
//       data: {
//         Nick: "Mario",
//         Room: "PortugalVSDenmark",
//       },
//     },
//   };

//   admin.messaging().send(data.message);

        

// });