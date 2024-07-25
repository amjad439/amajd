// // import 'package:flutter/material.dart';
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:intl/intl.dart';
// //
// // class ChatPage extends StatefulWidget {
// //   final String email;
// //
// //   const ChatPage({super.key, required this.email});
// //
// //   @override
// //   State<ChatPage> createState() => _ChatPageState();
// // }
// //
// // class _ChatPageState extends State<ChatPage> {
// //   String? messageText;
// //   final _firestore = FirebaseFirestore.instance;
// //   final TextEditingController _controller = TextEditingController();
// //
// //   void sendMessage() {
// //     if (messageText != null && messageText!.isNotEmpty) {
// //       _firestore.collection('messages').add({
// //         'text': messageText,
// //         'sender': widget.email,
// //         'timestamp': FieldValue.serverTimestamp(),
// //       }).then((value) {
// //         setState(() {
// //           messageText = '';
// //           _controller.clear();
// //         });
// //       });
// //     }
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final String email = widget.email;
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: CircleAvatar(
// //           radius: 25,
// //           backgroundImage: AssetImage("images/person1.png"),
// //         ),
// //       ),
// //       body: Column(
// //         mainAxisAlignment: MainAxisAlignment.end,
// //         children: [
// //           Expanded(
// //             child: StreamBuilder<QuerySnapshot>(
// //               stream: _firestore.collection('messages').orderBy('timestamp').snapshots(),
// //               builder: (context, snapshot) {
// //                 if (!snapshot.hasData) {
// //                   return Center(
// //                     child: CircularProgressIndicator(),
// //                   );
// //                 }
// //                 final messages = snapshot.data!.docs;
// //                 List<Widget> messageBubbles = [];
// //
// //                 for (var message in messages) {
// //                   final messageText = message['text'] ?? '';
// //                   final messageSender = message['sender'] ?? '';
// //                   final messageTimestamp = message['timestamp'] as Timestamp?;
// //                   final messageTime = messageTimestamp != null
// //                       ? DateFormat('hh:mm a').format(messageTimestamp.toDate())
// //                       : '';
// //
// //                   final currentUserIsSender = email == messageSender;
// //
// //                   final messageBubble = MessageBubble(
// //                     sender: messageSender,
// //                     text: messageText,
// //                     isCurrentUser: currentUserIsSender,
// //                     time: messageTime,
// //                   );
// //                   messageBubbles.add(messageBubble);
// //                 }
// //
// //                 return ListView(
// //                   reverse: true,
// //                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
// //                   children: messageBubbles,
// //                 );
// //               },
// //             ),
// //           ),
// //           Container(
// //             margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
// //             child: TextField(
// //               controller: _controller,
// //               onChanged: (value) {
// //                 setState(() {
// //                   messageText = value;
// //                 });
// //               },
// //               decoration: InputDecoration(
// //                 prefixIcon: IconButton(
// //                   onPressed: sendMessage,
// //                   icon: Icon(
// //                     Icons.send,
// //                     size: 33,
// //                   ),
// //                 ),
// //                 hintText: "Send a Message",
// //                 hintStyle: TextStyle(
// //                   fontWeight: FontWeight.bold,
// //                   fontSize: 20,
// //                 ),
// //                 filled: true,
// //                 fillColor: Colors.grey[200],
// //                 border: OutlineInputBorder(
// //                   borderRadius: BorderRadius.circular(20),
// //                 ),
// //               ),
// //               style: TextStyle(
// //                 fontSize: 20,
// //               ),
// //               cursorWidth: 3,
// //               cursorHeight: 28,
// //               textInputAction: TextInputAction.send,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // class MessageBubble extends StatelessWidget {
// //   final String sender;
// //   final String text;
// //   final bool isCurrentUser;
// //   final String time;
// //
// //   MessageBubble({required this.sender, required this.text, required this.isCurrentUser, required this.time});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: EdgeInsets.all(10.0),
// //       child: Column(
// //         crossAxisAlignment: isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
// //         children: [
// //           Material(
// //             borderRadius: isCurrentUser
// //                 ? BorderRadius.only(
// //               topLeft: Radius.circular(10.0),
// //               bottomLeft: Radius.circular(10.0),
// //               bottomRight: Radius.circular(10.0),
// //             )
// //                 : BorderRadius.only(
// //               topRight: Radius.circular(10.0),
// //               bottomLeft: Radius.circular(10.0),
// //               bottomRight: Radius.circular(10.0),
// //             ),
// //             elevation: 5.0,
// //             color: isCurrentUser ? Colors.blueAccent : Colors.grey[300],
// //             child: Padding(
// //               padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
// //               child: Text(
// //                 text,
// //                 style: TextStyle(
// //                   fontSize: 22.0,
// //                   color: isCurrentUser ? Colors.white : Colors.black,
// //                 ),
// //               ),
// //             ),
// //           ),
// //           SizedBox(height: 5),
// //           Text(
// //             sender,
// //             style: TextStyle(
// //               fontSize: 22.0,
// //               color: Colors.black54,
// //             ),
// //           ),
// //           Text(
// //             time,
// //             style: TextStyle(
// //               fontSize: 22.0,
// //               color: Colors.black54,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
//
//
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:intl/intl.dart';
//
// class ChatPage extends StatefulWidget {
//   final String email;
//
//   const ChatPage({super.key, required this.email});
//
//   @override
//   State<ChatPage> createState() => _ChatPageState();
// }
//
// class _ChatPageState extends State<ChatPage> {
//   String? messageText;
//   final _firestore = FirebaseFirestore.instance;
//   final TextEditingController _controller = TextEditingController();
//
//   void sendMessage() {
//     if (messageText != null && messageText!.isNotEmpty) {
//       _firestore.collection('messages').add({
//         'text': messageText,
//         'sender': widget.email,
//         'timestamp': FieldValue.serverTimestamp(),
//       }).then((value) {
//         setState(() {
//           messageText = '';
//           _controller.clear();
//         });
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final String email = widget.email;
//     return Scaffold(
//       appBar: AppBar(
//         title: CircleAvatar(
//           radius: 25,
//           backgroundImage: AssetImage("images/person1.png"),
//         ),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.end,
//         children: [
//           Expanded(
//             child: StreamBuilder<QuerySnapshot>(
//               stream: _firestore.collection('messages').orderBy('timestamp').snapshots(),
//               builder: (context, snapshot) {
//                 if (!snapshot.hasData) {
//                   return Center(
//                     child: CircularProgressIndicator(),
//                   );
//                 }
//                 final messages = snapshot.data!.docs;
//                 List<Widget> messageBubbles = [];
//
//                 for (var message in messages) {
//                   final messageText = message['text'] ?? '';
//                   final messageSender = message['sender'] ?? '';
//                   final messageTimestamp = message['timestamp'] as Timestamp?;
//                   final messageTime = messageTimestamp != null
//                       ? DateFormat('hh:mm a').format(messageTimestamp.toDate())
//                       : '';
//
//                   final currentUserIsSender = email == messageSender;
//
//                   final messageBubble = MessageBubble(
//                     sender: messageSender,
//                     text: messageText,
//                     isCurrentUser: currentUserIsSender,
//                     time: messageTime,
//                   );
//                   messageBubbles.add(messageBubble);
//                 }
//
//                 return ListView(
//                   reverse: true,
//                   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//                   children: messageBubbles,
//                 );
//               },
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
//             child: TextField(
//               controller: _controller,
//               onChanged: (value) {
//                 setState(() {
//                   messageText = value;
//                 });
//               },
//               decoration: InputDecoration(
//                 prefixIcon: IconButton(
//                   onPressed: sendMessage,
//                   icon: Icon(
//                     Icons.send,
//                     size: 33,
//                   ),
//                 ),
//                 hintText: "Send a Message",
//                 hintStyle: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 20,
//                 ),
//                 filled: true,
//                 fillColor: Colors.grey[200],
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//               style: TextStyle(
//                 fontSize: 20,
//               ),
//               cursorWidth: 3,
//               cursorHeight: 28,
//               textInputAction: TextInputAction.send,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class MessageBubble extends StatelessWidget {
//   final String sender;
//   final String text;
//   final bool isCurrentUser;
//   final String time;
//
//   MessageBubble({required this.sender, required this.text, required this.isCurrentUser, required this.time});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(10.0),
//       child: Column(
//         crossAxisAlignment: isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
//         children: [
//
//           Material(
//             borderRadius: isCurrentUser
//                 ? BorderRadius.only(
//               topLeft: Radius.circular(10.0),
//               bottomLeft: Radius.circular(10.0),
//               bottomRight: Radius.circular(10.0),
//             )
//                 : BorderRadius.only(
//               topRight: Radius.circular(10.0),
//               bottomLeft: Radius.circular(10.0),
//               bottomRight: Radius.circular(10.0),
//             ),
//             elevation: 5.0,
//
//             color: isCurrentUser ? Colors.blueAccent : Colors.grey[300],
//             child: Padding(
//               padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
//               child: Text(
//                 text,
//                 style: TextStyle(
//                   fontSize: 22.0,
//                   color: isCurrentUser ? Colors.white : Colors.black,
//                 ),
//               ),
//             ),
//           ),
//           SizedBox(height: 5),
//           Text(
//             sender,
//             style: TextStyle(
//               fontSize: 22.0,
//               color: Colors.black54,
//             ),
//           ),
//           Text(
//             time,
//             style: TextStyle(
//               fontSize: 22.0,
//               color: Colors.black54,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

class ChatPage extends StatefulWidget {
  final String email;

  const ChatPage({super.key, required this.email});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  String? messageText;
  final _firestore = FirebaseFirestore.instance;
  final TextEditingController _controller = TextEditingController();

  void sendMessage() {
    if (messageText != null && messageText!.isNotEmpty) {
      _firestore.collection('messages').add({
        'text': messageText,
        'sender': widget.email,
        'timestamp': FieldValue.serverTimestamp(),
      }).then((value) {
        setState(() {
          messageText = '';
          _controller.clear();
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final String email = widget.email;
    return Scaffold(
      appBar: AppBar(
        title: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage("images/person1.png"),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: _firestore.collection('messages').orderBy('timestamp').snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                final messages = snapshot.data!.docs;
                List<Widget> messageBubbles = [];

                for (var message in messages) {
                  final messageText = message['text'] ?? '';
                  final messageSender = message['sender'] ?? '';
                  final messageTimestamp = message['timestamp'] as Timestamp?;
                  final messageTime = messageTimestamp != null
                      ? DateFormat('hh:mm a').format(messageTimestamp.toDate())
                      : '';

                  final currentUserIsSender = email == messageSender;

                  final messageBubble = MessageBubble(
                    sender: messageSender,
                    text: messageText,
                    isCurrentUser: currentUserIsSender,
                    time: messageTime,
                  );
                  messageBubbles.add(messageBubble);
                }

                return ListView(
                  reverse: true,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  children: messageBubbles,
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: TextField(
              controller: _controller,
              onChanged: (value) {
                setState(() {
                  messageText = value;
                });
              },
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  onPressed: sendMessage,
                  icon: Icon(
                    Icons.send,
                    size: 33,
                  ),
                ),
                hintText: "Send a Message",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
              cursorWidth: 3,
              cursorHeight: 28,
              textInputAction: TextInputAction.send,
            ),
          ),
        ],
      ),
    );
  }
}

class MessageBubble extends StatelessWidget {
  final String sender;
  final String text;
  final bool isCurrentUser;
  final String time;

  MessageBubble({required this.sender, required this.text, required this.isCurrentUser, required this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: isCurrentUser ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          if (!isCurrentUser) ...[
            Padding(
              padding: const EdgeInsets.only(bottom: 68.0),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('images/Social_Admin.png'),
              ),
            ),
            SizedBox(width: 10),
          ],
          Column(
            crossAxisAlignment: isCurrentUser ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [
              Material(
                borderRadius: isCurrentUser
                    ? BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                )
                    : BorderRadius.only(
                  topRight: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                  bottomRight: Radius.circular(10.0),
                ),
                elevation: 5.0,
                color: isCurrentUser ? Colors.blueAccent : Colors.grey[300],
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: Text(
                    text,
                    style: TextStyle(
                      fontSize: 22.0,
                      color: isCurrentUser ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5),
              Text(
                sender,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black54,
                ),
              ),
              Text(
                time,
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
          if (isCurrentUser) ...[
            SizedBox(width: 10),
            Padding(
              padding: const EdgeInsets.only(bottom: 68.0),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: AssetImage('images/activ.png'),
              ),
            ),
          ],
        ],
      ),
    );
  }
}

