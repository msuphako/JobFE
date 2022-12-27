import 'package:hires/auth.dart';
import 'package:hires/job.dart';
import 'package:hires/presentation/messages_screen/single_message.dart';
import 'package:flutter/material.dart';
import 'package:hires/core/app_export.dart';
import 'message_textfield.dart';

class ChatScreen extends StatefulWidget {
  static String id="ChatScreen";

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          title: Padding(
            padding: EdgeInsets.only(

            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Padding(
                  padding: EdgeInsets.symmetric(),
                  child: Container(
                    height: getVerticalSize(
                      50.00,
                    ),
                    width: getHorizontalSize(
                      52.00,
                    ),
                    margin: EdgeInsets.only(
                      top: getVerticalSize(
                        1.00,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              right: getHorizontalSize(
                                2.00,
                              ),
                            ),
                            child: Container(
                              height: getSize(
                                50.00,
                              ),
                              width: getSize(
                                50.00,
                              ),
                              decoration: BoxDecoration(
                                  color: isDark
                                      ? ColorConstant.yellow
                                      : ColorConstant.red300,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(8),
                                  )),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: getVerticalSize(
                                  12.00,
                                ),
                                right: getHorizontalSize(
                                  2.00,
                                ),
                                bottom: getVerticalSize(5)),
                            child: Image.asset(
                              ImageConstant.imgBusinessmanho,
                              height: getSize(
                                50.00,
                              ),
                              width: getSize(
                                50.00,
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: getHorizontalSize(4),
                                vertical: getVerticalSize(4)),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: isDark
                                    ? ColorConstant.darkBg
                                    : ColorConstant.whiteA700),
                            child: Container(
                              height: getSize(
                                8.00,
                              ),
                              width: getSize(
                                8.00,
                              ),
                              decoration: BoxDecoration(
                                  color: ColorConstant.redA701,
                                  shape: BoxShape.circle),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                
                ],
              ),
            ),
          ),
          leading: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                18.00,
              ),
              right: getHorizontalSize(
                18.00,
              ),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  height: getSize(
                    24.00,
                  ),
                  width: getSize(
                    24.00,
                  ),
                  child: Icon(Icons.arrow_back_ios,
                      size: getSize(20),
                      color: isDark ? Colors.white : Colors.black)),
            ),
          ),
        ),
          
        ),

      body: Column(
        children: [
           Expanded(child: Container(
             padding: EdgeInsets.all(10),
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.only(
                 topLeft: Radius.circular(25),
                 topRight: Radius.circular(25)
               )
             ),
         child: StreamBuilder(
               stream: db.collection("users").doc("NaOgJt0lLMgPyxp5lRXPnez9nLS2").collection('messages').doc("2hFMHHDO7qZ6lq04TMoh").collection('chats').orderBy("date",descending: true).snapshots(),
               builder: (context,AsyncSnapshot snapshot){
                   if(snapshot.hasData){
                     if(snapshot.data.docs.length < 1){
                       return Center(
                         child: Text("Say Hi"),
                       );
                     }
                     return ListView.builder(
                       itemCount: snapshot.data.docs.length,
                       reverse: true,
                       physics: BouncingScrollPhysics(),
                       itemBuilder: (context,index){
                          bool isMe = snapshot.data.docs[index]['senderId'] == "NaOgJt0lLMgPyxp5lRXPnez9nLS2";
                          return SingleMessage(message: snapshot.data.docs[index]['message'], time: '6:00', isMe: isMe);
                       });
                   }
                   return Center(
                     child: CircularProgressIndicator()
                   );
               }
               ),
           )),
           MessageTextField("NaOgJt0lLMgPyxp5lRXPnez9nLS2", "2hFMHHDO7qZ6lq04TMoh"),
          //  MessageTextField("2hFMHHDO7qZ6lq04TMoh", "NaOgJt0lLMgPyxp5lRXPnez9nLS2"),

        ],
      ),
      
    );
  }
}
