import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Social_Activity extends StatelessWidget {
  Social_Activity({super.key});
   List Activity =[
     {
       "name" : "Chees",
       "image" : "images/chees.png",
       "routes" : "Chees",
     },
     {
       "name" : "Seminar",
       "image" : "images/Seminar.png",
       "routes" : "Seminar",
     },
     {
       "name" : "Walking_trips",
       "image" : "images/Walker_Trips.png",
       "routes" : "Walking_Trips",
     },
     {
       "name" : "Courses",
       "image" : "images/Courses.png",
       "routes" : "Courses",
     },
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Social_Activity",
          style: TextStyle(
            fontSize: 30,
          ),),
      ),
      body:Column(
        children: [
          Container(
            width:double.infinity,
            height: 250,
            decoration:BoxDecoration(
              image:DecorationImage(
                fit:BoxFit.fill,
                image: AssetImage("images/Social_Activity.png"
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
                            Navigator.of(context).pushNamed(Activity[i]["routes"]);
                          },
                          child: Container(
                            width:150,
                            height: 150,
                            decoration:BoxDecoration(
                              color:Colors.grey,
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
