import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  List names = [
    {
      "name" : "Volunteer",
      "image" : "images/Social_Volunteer.png",
      "routes" : "Social_Volunteer",
    },
    {
      "name" : "Olders",
      "image" : "images/Olders.png",
      "routes" : "Olders",
    },
    {
      "name" : "Activity",
      "image" : "images/Social_Activity.png",
      "routes" : "Activity",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage",
          style: TextStyle(
            fontSize: 25,
          ),),
      ),
      body: Column(
        children: [
          Container(
            margin:EdgeInsets.only(left: 20, right: 20,top:50),
            child: TextField(
              decoration:InputDecoration(
                prefixIcon: IconButton(
                  onPressed: (){},
                  icon:Icon(Icons.search,
                    size: 33,) ,
                ),
                hintText: "Search for any Volunteeror activ or older",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,

                ),
                filled: true,
                fillColor:Colors.grey[200],
                border:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(20),
                ),
              ),
              style: TextStyle(
                fontSize: 20,
              ),
              cursorWidth: 3,
              cursorHeight: 28,
              textInputAction: TextInputAction.search,
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 30),
              child:GridView.builder(
                  itemCount:3,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                  ),
                  itemBuilder:(context , i ){
                    return Column(
                      children: [
                        MaterialButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed(names[i]["routes"]);
                          },
                          child: Container(
                            width:150,
                            height: 150,
                            decoration:BoxDecoration(
                              image:DecorationImage(
                                fit:BoxFit.fill,
                                image: AssetImage( names[i]["image"],),
                              ),
                            ),

                          ),
                        ),
                        Text(names[i]["name"],
                          style:TextStyle(
                            fontSize:20,
                          ),),
                      ],
                    );
                  }
              ),
            ),
          ),
        ],
      ),
    );
  }
}
