
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Health_Activity extends StatelessWidget {
   Health_Activity({super.key});
  List Activity1 =[
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
        title: Text("Health_Activity",
          style: TextStyle(
            fontSize: 30,
          ),),
      ),
      body: Column(
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
            child: Container(
              child: GridView.builder(
                  itemCount:4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                  ),
                  itemBuilder:(context , i ){
                    return Column(
                      children: [
                        MaterialButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed(Activity1[i]["routes"]);
                          },
                          child: Container(
                            width:150,
                            height: 150,
                            decoration:BoxDecoration(
                              color:Colors.grey,
                              image:DecorationImage(
                                fit:BoxFit.fill,
                                image: AssetImage( Activity1[i]["image"],
                                ),
                              ),
                            ),

                          ),
                        ),
                        Text(Activity1[i]["name"],
                          style:TextStyle(
                            fontSize:20,
                          ),),
                      ],
                    );
                  }
              ),
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
