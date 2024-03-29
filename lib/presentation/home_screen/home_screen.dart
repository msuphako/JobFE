import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hires/presentation/categories_screen/categories_screen.dart';
import 'package:hires/presentation/employer/employee_categories.dart';
import 'package:hires/presentation/employer/employer_home.dart';
import 'package:hires/presentation/homepage_3_screen/homepage_3_screen.dart';
import 'package:hires/presentation/messages_screen/messages_screen.dart';
import 'package:hires/presentation/saved_screen/old.dart';
import '../../core/utils/color_constant.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/math_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import '../../main.dart';

class HomeScreen extends StatefulWidget {
  static String id = "HomeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final user = FirebaseAuth.instance.currentUser!;
  // final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;

  @override
  void initState() {
    print(user.uid);
    FirebaseMessaging.instance.getToken().then((token) {
      updateTokenToFirestore(token!);
    });
    setState(() {});
    // FirebaseMessaging.onMessage.listen((RemoteMessage message) {
    //   final notification = message.data;
    //   print("onMessage: $notification");
    // });
    // FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    //   print("onMessageOpenedApp: $message");
    // });

    // onResume: (Map<String, dynamic> message) async {
    //   print("onResume: $message");
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => ChatScreen()),
    //   );
    // },
    super.initState();
  }

  Future<void> updateTokenToFirestore(String token) async {
    // Update the token to the user's document in Firestore
    await FirebaseFirestore.instance
        .collection('users')
        .doc(user.uid)
        .update({'token': token});
  }

  List<Widget> screens = [
        Homepage3Screen(),
        MessagesScreen(),
        CategoriesScreen()
      ],
      empscreens = [EmpHomeScreen(), MessagesScreen(), EmpCategories()];

  int selectedNavBarIndex = 0;
  @override
  Widget build(BuildContext context) {
    CollectionReference userdata =
        FirebaseFirestore.instance.collection('users');
    return FutureBuilder<DocumentSnapshot>(
        future: userdata.doc(user.uid).get(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasError) {
            return Text('ไม่พบข้อมูล');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center();
          }
          if (snapshot.data.data() == null) {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MainPage()));
          }
          Map<String, dynamic> data =
              snapshot.data.data() as Map<String, dynamic>;
          return Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              showSelectedLabels: true,
              selectedItemColor: ColorConstant.teal600,
              unselectedItemColor: ColorConstant.gray600,
              selectedLabelStyle: TextStyle(
                color: ColorConstant.teal600,
                fontSize: getFontSize(
                  12,
                ),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w900,
              ),
              unselectedLabelStyle: TextStyle(
                color: ColorConstant.gray600,
                fontSize: getFontSize(
                  12,
                ),
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
              currentIndex: selectedNavBarIndex,
              onTap: (index) {
                setState(() {
                  selectedNavBarIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled, color: ColorConstant.gray402),
                  activeIcon:
                      Icon(Icons.home_filled, color: ColorConstant.teal600),
                  label: '',
                ),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(ImageConstant.inActiveMsg),
                    activeIcon: SvgPicture.asset(ImageConstant.inActiveMsg,
                        color: ColorConstant.teal600),
                    label: ""),
                // BottomNavigationBarItem(
                //     icon: SvgPicture.asset(ImageConstant.inActiveBookmark),
                //     activeIcon: SvgPicture.asset(
                //         ImageConstant.inActiveBookmark,
                //         color: ColorConstant.teal600),
                //     label: "."),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset(ImageConstant.inActiveCategory),
                    activeIcon: SvgPicture.asset(ImageConstant.inActiveCategory,
                        color: ColorConstant.teal600),
                    label: ""),
              ],
            ),
            body: data['usertype'] == "employee"
                ? screens[selectedNavBarIndex]
                : empscreens[selectedNavBarIndex],
          );
          ;
        });
  }
}
