// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:untitled/Health_Admin/HomePage_HA.dart';
// import 'package:untitled/Health_Admin/Notificatin_HA.dart';
// import 'package:untitled/Health_Admin/Updat_Profil_HA.dart';
//
// import 'HomePage_M.dart';
// import 'Notification_M.dart';
// import 'Update_Profile.dart';
//
// class HomePageManager extends StatefulWidget {
//   final String email;
//
//   const HomePageManager({Key? key, required this.email}) : super(key: key);
//
//   @override
//   State<HomePageManager> createState() => _HomePage_Health_AdminState();
// }
//
// class _HomePage_Health_AdminState extends State<HomePageManager> {
//   @override
//   List<Widget> pages = [];
//   int currentPageIndex = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     pages = [
//       HomePage_M(),
//       Update_Profile_M(),
//       Notificatin_M(email: widget.email,) // تمرير البريد الإلكتروني هنا
//     ];
//   }
//
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: currentPageIndex,
//         onTap: (index) {
//           setState(() {
//             currentPageIndex = index;
//           });
//         },
//         selectedFontSize: 20,
//         unselectedFontSize: 20,
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home, size: MediaQuery.of(context).size.width * 0.1,),
//               label: "Home"
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person, size: MediaQuery.of(context).size.width * 0.1,),
//             label: "Profile",
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.notifications, size: MediaQuery.of(context).size.width * 0.1,),
//             label: "Notification",
//           ),
//         ],
//       ),
//       body: pages[currentPageIndex],
//     );
//   }
// }



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:untitled/Manager/HomePage_M.dart';
import 'package:untitled/Manager/Notification_M.dart';
import 'package:untitled/Manager/Update_Profile.dart';

class HomePageManager extends StatefulWidget {
  final String email;

  const HomePageManager({Key? key, required this.email}) : super(key: key);

  @override
  State<HomePageManager> createState() => _HomePageManagerState();
}

class _HomePageManagerState extends State<HomePageManager> {
  List<Widget> pages = [];
  int currentPageIndex = 0;
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  @override
  void initState() {
    super.initState();
    pages = [
      HomePage_M(),
      Update_Profile_M(),
      Notificatin_M(email: widget.email), // تمرير البريد الإلكتروني هنا
    ];

    // طلب الأذونات اللازمة
    messaging.requestPermission();

    // التعامل مع الإشعارات عند استقبالها في المقدمة
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Received a message in the foreground!');
      print('Message data: ${message.data}');
      if (message.notification != null) {
        print('Message also contained a notification: ${message.notification}');
      }
    });

    // التعامل مع الإشعارات عند النقر عليها وفتح التطبيق
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('Message clicked!');
      setState(() {
        currentPageIndex = 2; // الانتقال إلى صفحة الإشعارات
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedFontSize: 20,
        unselectedFontSize: 20,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: MediaQuery.of(context).size.width * 0.1),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: MediaQuery.of(context).size.width * 0.1),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: MediaQuery.of(context).size.width * 0.1),
            label: "Notification",
          ),
        ],
      ),
      body: pages[currentPageIndex],
    );
  }
}


