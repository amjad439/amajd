import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Health_Admin/Activit.dart';
import 'package:untitled/Health_Admin/Add_Health_Volunteer.dart';
import 'package:untitled/Health_Admin/Creat_Health_Activity.dart';
import 'package:untitled/Health_Admin/HomePage_Health_Admin.dart';
import 'package:untitled/Health_Volunteer/Creat_Profile.dart';
import 'package:untitled/Health_Volunteer/Equoiment.dart';
import 'package:untitled/Health_Volunteer/HomePage.dart';
import 'package:untitled/Health_Volunteer/Older_H.dart';
import 'package:untitled/Health_Volunteer/Updat_Profile_VH.dart';
import 'package:untitled/Health_Volunteer/Updat_Stat_Health.dart';
import 'package:untitled/Login.dart';
import 'package:untitled/Manager/Add_Health_Admin.dart';
import 'package:untitled/Manager/Add_Social_Admin.dart';
import 'package:untitled/Manager/Chat.dart';
import 'package:untitled/Manager/Chat_Page.dart';
import 'package:untitled/Manager/Chees.dart';
import 'package:untitled/Manager/Courses.dart';
import 'package:untitled/Manager/Diapers.dart';
import 'package:untitled/Manager/Health_Activity.dart';
import 'package:untitled/Manager/Health_Admin.dart';
import 'package:untitled/Manager/Health_Volunteer.dart';
import 'package:untitled/Manager/HomePage_M.dart';
import 'package:untitled/Manager/HomePage_Manager.dart';
import 'package:untitled/Manager/Notification_M.dart';
import 'package:untitled/Manager/Olders.dart';
import 'package:untitled/Manager/Seminar.dart';
import 'package:untitled/Manager/SethoScop.dart';
import 'package:untitled/Manager/Social_Activity.dart';
import 'package:untitled/Manager/Social_Admin.dart';
import 'package:untitled/Manager/Social_Volunteer.dart';
import 'package:untitled/Manager/Stick.dart';
import 'package:untitled/Manager/Update_Profile.dart';
import 'package:untitled/Manager/Wal;ing_Trips.dart';
import 'package:untitled/Manager/Walker.dart';
import 'package:untitled/Older/Book_Activ.dart';
import 'package:untitled/Older/Book_Visit.dart';
import 'package:untitled/Older/HomePage.dart';
import 'package:untitled/Sign_Up.dart';
import 'package:untitled/Social_Admin/Activity.dart';
import 'package:untitled/Social_Admin/Add_Social_Volunteer.dart';
import 'package:untitled/Social_Admin/Creat_Social_Activity.dart';
import 'package:untitled/Social_Admin/HomePageSocialAdmin.dart';
import 'package:untitled/Social_Admin/Updat_Social_Activity.dart';
import 'package:untitled/Social_Volunteer/Data_Older.dart';
import 'package:untitled/Social_Volunteer/Homepage.dart';
import 'package:untitled/Social_Volunteer/Older.dart';
import 'package:untitled/Social_Volunteer/Updat_Profile_VS.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(
      MyApp(),
  );
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home:Login_Social_Admin(),

      routes: {
        "HomePage_Manager" : (context)=>HomePageManager(email: ModalRoute.of(context)?.settings.arguments as String),
        "Health_Admin" : (context)=>Health_Admin(),
        "Social_Admin" : (context)=>Social_Admin(),
        "Health_Volunteer" : (context)=>Health_Volunteer(),
        "Social_Volunteer" : (context)=>Social_Volunteer(),
        "Olders" : (context)=>Olders(),
        "Health_Activity" : (context) =>Health_Activity(),
        "Social_Activity" : (context) =>Social_Activity(),
        "Chees" : (context) =>Chees(),
        "Seminar" : (context) =>Seminar(),
        "Walking_Trips" : (context) =>Walking_Trips(),
        "Courses" : (context) =>Courses(),
        "Diapers" : (context) =>Diapers(),
        "SethoScop" : (context) =>SethoScop(),
        "Walker" : (context) =>Walker(),
        "Stick" : (context) =>Stick(),
        'HomePage_SocialA': (context) {
          final email = ModalRoute.of(context)!.settings.arguments as String;
          return HomePage_SocialA(email: email);
        },
        "Creat_Social_Activity" : (context)=>Creat_Social_Activity(),
        "Activity" : (context)=>Activity(),
        "Updat_Social_Activity" : (context)=>Updat_Social_Activity(),
        
        // "HomePage_Health_Admin" : (context)=>HomePage_Health_Admin(),
        'HomePage_Health_Admin': (context) => HomePage_Health_Admin(email: ModalRoute.of(context)?.settings.arguments as String),


        "Activity_H" : (context)=>Activity_H(),
        "Creat_Health_Activity":(context)=>Creat_Health_Activity(),
        "HomePage_O":(context)=>HomePage_O(),
        "Book_Activ" : (context)=>Book_Activ(),
        "Book_Visit" : (context) =>Book_Visit(),
        "HomePage_M" : (context) =>HomePage_M(),
        "Update_Profile_M" : (context) =>Update_Profile_M(),
        "Notification_M" : (context) =>Notificatin_M(email: ModalRoute.of(context)?.settings.arguments as String),
        "HomePage_HV" : (context)=>HomePage_HV(),
        "Older_H" :(context)=>Older_H(),
        "Equoiment" : (context)=>Equoiment(),
        "Creat_Profile" : (context)=>Creat_Profile(),
        "Updat_Profile_VH":(context)=>Updat_Profile_VH(),
        "Updat_Stat_Health" :(context)=>Updat_Stat_Health(),
        "Updat_Profile_VS" :(context)=>Updat_Profile_VS(),
        "Older_S" : (context) =>Older_S(),
        "Data_Older" :(context)=>Data_Older(),
        "Homepag_VS" :(context)=>Homepag_VS(),
        "Chat" : (context) =>Chat(),
        "ChatPage" :(context)=>ChatPage(email: ModalRoute.of(context)!.settings.arguments as String,),
        "Sign_UpSA" : (context)=>Sign_UpSA(),
        "Login_Social_Admin" : (context)=>Login_Social_Admin(),
        "Add_Social_Volunteer" : (context) =>Add_Social_Volunteer(),
        "Add_Health_Volunteer" : (context)=>Add_Health_Volunteer(),
        "Add_Social_Admin" : (context) =>Add_Social_Admin(),
        "Add_Health_Admin" : (context) =>Add_Health_Admin(),
      },
    );
  }
}




