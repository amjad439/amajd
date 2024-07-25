import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stick extends StatelessWidget {
  const Stick({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stick",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
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
                ),
              );
            }
        ),
      ),
    );
  }
}
