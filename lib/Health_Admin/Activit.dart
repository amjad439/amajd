import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activity_H extends StatelessWidget {
   Activity_H({super.key});
  List ActivityH =[
    {
      "name" : "Diapers",
      "image" : "images/diapers.png",
      "routes" : "Diapers",
    },
    {
      "name" : "SethoScop",
      "image" : "images/SothoScop.png",
      "routes" : "SethoScop",
    },
    {
      "name" : "Walker",
      "image" : "images/Walker.png",
      "routes" : "Walker",
    },
    {
      "name" : "Stick",
      "image" : "images/Stick.png",
      "routes" : "Stick",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Health_Activity",
          style: TextStyle(
            fontSize: 30,
          ),),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: IconButton(onPressed: (){
              Navigator.of(context).pushNamed("Creat_Health_Activity");
            },
              icon: Icon(Icons.add,
                size: 40,),
            ),
          ),
        ],
      ),
      body:Column(
        children: [
          Container(
            width:double.infinity,
            height: 250,
            decoration:BoxDecoration(
              image:DecorationImage(
                fit:BoxFit.fill,
                image: AssetImage("images/Health_Activity.png"
                ),
              ),
            ),

          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView.builder(
                itemCount:4,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                    childAspectRatio: 0.9

                ),
                itemBuilder:(context , i ){
                  return Column(
                    children: [
                      MaterialButton(
                        onPressed: (){
                          Navigator.of(context).pushNamed(ActivityH[i]["routes"]);
                        },
                        child: Container(
                          width:150,
                          height: 150,
                          decoration:BoxDecoration(
                            image:DecorationImage(
                              fit:BoxFit.fill,
                              image: AssetImage( ActivityH[i]["image"],
                              ),
                            ),
                          ),

                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            margin :EdgeInsets.only(left: 40),
                            child: Text(ActivityH[i]["name"],
                              style:TextStyle(
                                fontSize:20,
                              ),),
                          ),
                          Expanded(
                            child: Container(
                              margin :EdgeInsets.only(right: 30),
                              child: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.delete),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }
            ),
          ),
          ElevatedButton(
            onPressed: (){
            },
            child: Text("Show Statistics",
              style:TextStyle(
                  fontSize:20
              ),),
            style:ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100)
            ),

          ),
        ],
      ),
    );
  }
}
