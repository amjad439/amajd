import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Health_Volunteer extends StatelessWidget {
  const Health_Volunteer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Health_Volunteer",
          style: TextStyle(
            fontSize: 30,
          ),) ,
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
      ),
      body:Container(
        margin: EdgeInsets.all( 20),
        child:ListView.separated(
            separatorBuilder:(context , i){
              return SizedBox(height: 20,);
            },
            itemCount:5,
            itemBuilder:(context , i ){
              return Container(
                decoration:BoxDecoration(
                  border:Border.all(
                  ),
                ),
                child: ListTile(
                    onTap: (){},
                    leading:CircleAvatar(
                      child:Text("MA"),
                      radius: 40,
                    ),
                    title:Text("Name : ",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight:FontWeight.bold,
                      ),),
                    subtitle:Text("Age : ",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        )),
                    trailing:IconButton(
                      icon: Icon(Icons.delete,
                        size: 35,),
                      onPressed: (){},
                    )
                ),
              );
            }
        ),
      ),
      floatingActionButton: Container(
        margin:EdgeInsets.only(bottom: 50 ,right: 30),
        child: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).pushNamed("Add_Health_Volunteer");
          },
          child: Icon(Icons.add , size: 30,),

        ),
      ),
    );
  }
}
