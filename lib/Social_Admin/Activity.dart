import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
   Activity({super.key});
  List ActivityS =[
    {
      "name" : "Chees",
      "image" : "images/chees.png",
      "routes" : "Chees",
      "time" : "10 pm",
      "location" : " Salameah1",

    },
    {
      "name" : "Seminar",
      "image" : "images/Seminar.png",
      "routes" : "Seminar",
      "time" : "10 AM",
      "location" : " Salameah2",
    },
    {
      "name" : "Walking_trips",
      "image" : "images/Walker_Trips.png",
      "routes" : "Walking_Trips",
      "time" : "6 Am",
      "location" : " Salameah3",
    },
    {
      "name" : "Courses",
      "image" : "images/Courses.png",
      "routes" : "Courses",
      "time" : "7 pm",
      "location" : " Salameah4",
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
        actions: [
          Container(
            margin: EdgeInsets.only(right: 20),
            child: IconButton(onPressed: (){
              Navigator.of(context).pushNamed("Creat_Social_Activity");
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
                image: AssetImage("images/Social_Activity.png"
                ),
              ),
            ),

          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder:(context,i){
                return SizedBox(
                  height: 10,
                );
              },
                itemCount:4,
                itemBuilder:(context , i ){
                  return Dismissible(
                    key: Key("$i"),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).pushNamed(ActivityS[i]["routes"]);
                      },
                      child: Card(
                        child: Row(
                          children: [
                            Expanded(

                              child: Image.asset(ActivityS[i]["image"],
                                fit: BoxFit.cover,
                                height: 100,
                              ),
                            ),
                            Expanded(
                            flex:3,
                              child: ListTile(
                                title: Text("${ActivityS[i]["name"]} : ${ActivityS[i]["time"]}",
                                style:TextStyle(
                                   fontSize:20,
                                 ),),
                                subtitle: Text("(${ActivityS[i]["location"]})",
                                       style:TextStyle(
                                         fontSize:15,
                                         color: Colors.red,
                                       ),),
                                trailing:IconButton(
                                               onPressed: (){
                           Navigator.of(context).pushNamed("Updat_Social_Activity");
                        },
                                               icon: Icon(Icons.edit ,),

                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: 10
            ),
            child: ElevatedButton(
              onPressed: (){
              },
              child: Text("Show Statistics",
                style:TextStyle(
                    fontSize:20
                ),),
              style:ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 100 , vertical: 10)
              ),

            ),
          ),
        ],
      ),
    );
  }
}
