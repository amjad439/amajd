import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage_HV extends StatefulWidget {
  const HomePage_HV({super.key});

  @override
  State<HomePage_HV> createState() => _HomePage_HVState();
}

class _HomePage_HVState extends State<HomePage_HV> {
  @override
  List names = [
    {
      "name" : "Older",
      "image" : "images/oldr.png",
      "routes" : "Older_H",
    },
    {
      "name" : "Sign for an Equoiment",
      "image" : "images/equpiment.png",
      "routes" : "Equoiment",
    },
    {
      "name" : "Creat_Older_Profile",
      "image" : "images/olderp.png",
      "routes" : "Creat_Profile",
    },

  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30,),
                child: MaterialButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed("Updat_Profile_VH");
                  },
                  child:CircleAvatar(
                    radius:30,
                    backgroundImage: AssetImage("images/person3.png",
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin:EdgeInsets.only(left: 20, right: 20,top:50),
            child: TextField(
              decoration:InputDecoration(
                prefixIcon: IconButton(
                  onPressed: (){},
                  icon:Icon(Icons.search,
                    size: 33,) ,
                ),
                hintText: "Search for any older",
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,

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
            child: GridView.builder(
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
                          width: 270,
                          height: 150,
                          decoration:BoxDecoration(
                            color:Colors.grey,
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
        ],
      ),

    );
  }
}
