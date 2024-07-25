import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Health_Admin/HomePage_HA.dart';
import 'package:untitled/Health_Admin/Notificatin_HA.dart';
import 'package:untitled/Health_Admin/Updat_Profil_HA.dart';

class HomePage_Health_Admin extends StatefulWidget {
  final String email;

  const HomePage_Health_Admin({Key? key, required this.email}) : super(key: key);

  @override
  State<HomePage_Health_Admin> createState() => _HomePage_Health_AdminState();
}

class _HomePage_Health_AdminState extends State<HomePage_Health_Admin> {
  @override
  List<Widget> pages = [];
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    pages = [
      HomePage_HA(),
      Updat_Profil_HA(),
      Notificatin_HA(email: widget.email), // تمرير البريد الإلكتروني هنا
    ];
  }

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
            icon: Icon(Icons.home, size: MediaQuery.of(context).size.width * 0.1,),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, size: MediaQuery.of(context).size.width * 0.1,),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: MediaQuery.of(context).size.width * 0.1,),
            label: "Notification",
          ),
        ],
      ),
      body: pages[currentPageIndex],
    );
  }
}
