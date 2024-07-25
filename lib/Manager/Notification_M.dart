// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:untitled/Manager/Chat_Page.dart';
//
//
// class Notificatin_M extends StatelessWidget {
//   final String email;
//
//   const Notificatin_M({Key? key, required this.email}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Notification"),
//       ),
//       body: Container(
//         margin: EdgeInsets.only(top: 30),
//         child: ListView.separated(
//           separatorBuilder: (context, i) {
//             return SizedBox(
//               height: 25,
//             );
//           },
//           itemCount: 5,
//           itemBuilder: (context, i) {
//             return Dismissible(
//               key: Key("$i"),
//               child: ListTile(
//                 leading: CircleAvatar(
//                   radius: 30,
//                   backgroundImage: AssetImage("images/person1.png"),
//                 ),
//                 title: Text(
//                   "Mohamad Sends you a message.",
//                   style: TextStyle(fontSize: 18),
//                 ),
//                 trailing: IconButton(
//                   onPressed: () {
//                     Navigator.of(context).push(MaterialPageRoute(
//                       builder: (context) => ChatPage(email: email),
//                     ));
//                   },
//                   icon: Icon(
//                     Icons.wechat,
//                     size: 40,
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Manager/Chat_Page.dart';

class Notificatin_M extends StatelessWidget {
  final String email;

  const Notificatin_M({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notification"),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('messages').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          }
          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return Center(child: Text('No notifications found.'));
          }

          final notifications = snapshot.data!.docs.where((doc) {
            final data = doc.data() as Map<String, dynamic>;
            return data.containsKey('sender') && data['sender'].isNotEmpty && data.containsKey('text') && data['text'].isNotEmpty;
          }).toList();

          if (notifications.isEmpty) {
            return Center(child: Text('No notifications found.'));
          }

          return ListView.separated(
            padding: const EdgeInsets.all(16),
            separatorBuilder: (context, i) {
              return SizedBox(height: 16);
            },
            itemCount: notifications.length,
            itemBuilder: (context, i) {
              var notification = notifications[i];
              var sender = notification['sender'] ?? 'Unknown';
              var text = notification['text'] ?? 'No message text';

              return Dismissible(
                key: Key(notification.id),
                direction: DismissDirection.endToStart,
                background: Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  color: Colors.red,
                  child: Icon(Icons.delete, color: Colors.white),
                ),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("images/person1.png"),
                    ),
                    title: Text(
                      sender,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    subtitle: Text(
                      text,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ChatPage(email: email),
                        ));
                      },
                      icon: Icon(
                        Icons.wechat,
                        size: 30,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}




