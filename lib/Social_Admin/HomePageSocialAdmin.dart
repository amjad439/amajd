import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'HomePage.dart';
import 'Notificatin.dart';
import 'Updat_Profil.dart'; // تأكد من تعديل المسار وفقاً لمشروعك

class HomePage_SocialA extends StatefulWidget {
  final String email;

  HomePage_SocialA({super.key, required this.email});

  @override
  State<HomePage_SocialA> createState() => _HomePage_SocialAState();
}

class _HomePage_SocialAState extends State<HomePage_SocialA> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    // تحديث قائمة الصفحات لتمرير البريد الإلكتروني
    List<Widget> pages = [
      HomePage(),
      Updat_Profil(),
      Notificatin(email: widget.email),
    ];

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
            icon: Icon(
              Icons.home,
              size: MediaQuery.of(context).size.width * 0.1,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: MediaQuery.of(context).size.width * 0.1,
            ),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications,
              size: MediaQuery.of(context).size.width * 0.1,
            ),
            label: "Notification",
          ),
        ],
      ),
      body: pages[currentPageIndex],
    );
  }
}
