import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Data_Older extends StatefulWidget {
  const Data_Older({super.key});

  @override
  State<Data_Older> createState() => _Data_OlderState();
}

class _Data_OlderState extends State<Data_Older> {
  @override
  List Activity =[
    {
      "name" : "Chees",
      "image" : "images/chees.png",
    },
    {
      "name" : "Seminar",
      "image" : "images/Seminar.png",
    },
    {
      "name" : "Walking_trips",
      "image" : "images/Walker_Trips.png",
    },
    {
      "name" : "Courses",
      "image" : "images/Courses.png",

    },
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width:double.infinity,
              height: 300,
              child:Image.asset("images/oldr.png" ,
                fit: BoxFit.fill,),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(30),
              padding: EdgeInsets.all(30),
              decoration: BoxDecoration(
                  border:Border.all(
                      width: 1.5
                  )
              ),
              child:Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                    ),
                    title: Text("Name :",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight:FontWeight.bold,
                      ),
                    ),
                    subtitle:Text("Age :"
                    ) ,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: GridView.builder(
                                itemCount:4,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount:4,
                                ),
                                itemBuilder:(context , i ){
                                  return Column(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin:EdgeInsets.all(3),
                                          decoration:BoxDecoration(
                                            image:DecorationImage(
                                              fit:BoxFit.fill,
                                              image: AssetImage( Activity[i]["image"],
                                              ),
                                            ),
                                          ),

                                        ),
                                      ),
                                      Text(Activity[i]["name"],
                                        style:TextStyle(
                                          fontSize:10,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                    ],
                                  );
                                }
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}
