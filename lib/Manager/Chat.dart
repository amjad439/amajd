import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {

  const Chat({super.key});

  @override

  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  List Photo =[
    {
      "image" : "images/person1.png",
    },
    {
      "image" : "images/person2.png",
    },
    {
      "image" : "images/person3.png",
    },
    {
      "image" : "images/person4.png",
    },
    {
      "image" : "images/person5.png",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        actions: [
          Container(
            margin: EdgeInsets.all(5),
            child: IconButton(
              icon:Icon(Icons.search ),
              onPressed:(){},
              iconSize: 35,
            ),
          )
        ],
        title:Text("Chat" ,
        style: TextStyle(
          fontSize: 30,
        ),
        ),
      ),
      body:Container(
        margin: EdgeInsets.only(top: 20),
        child:ListView.builder(
            itemCount:5,
            itemBuilder:(context , i ){
              return ListTile(
                onTap: (){
                  Navigator.of(context).pushNamed("Chat_Page");
                },
                leading:CircleAvatar(
                  radius:40,
                  backgroundImage:AssetImage(
                    Photo[i]["image"],
                  ),
                ),
                title:Text("Majd",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight:FontWeight.bold,
                ),),
                subtitle:Text("Hey,How are you.",
                    style: TextStyle(
                        fontSize: 15,
                    )),
                trailing:Text("10:36 PM",
                    style: TextStyle(
                      fontSize: 15,
                    )),
              );
            }
        ),
      ),
    );
  }
}
