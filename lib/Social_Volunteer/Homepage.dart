import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepag_VS extends StatefulWidget {
  const Homepag_VS({super.key});

  @override
  State<Homepag_VS> createState() => _Homepag_VSState();
}

class _Homepag_VSState extends State<Homepag_VS> {
  @override
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
                    Navigator.of(context).pushNamed("Updat_Profile_VS");
                  },
                  child:CircleAvatar(
                    radius:30,
                    backgroundImage: AssetImage("images/person5.png",
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
          SizedBox(
            height: 100,
          ),
          Column(
            children: [
              MaterialButton(
                onPressed: (){
                  Navigator.of(context).pushNamed("Older_S");
                },
                child: Container(
                  width:150,
                  height: 150,
                  decoration:BoxDecoration(

                    image:DecorationImage(
                      fit:BoxFit.fill,
                      image: AssetImage("images/oldr.png",
                      ),
                    ),

                  ),
                ),
              ),
              Text("older" ,
                style: TextStyle(
                  fontSize: 20,
                ),),
            ],
          ),
        ],
      ),

    );
  }
}
