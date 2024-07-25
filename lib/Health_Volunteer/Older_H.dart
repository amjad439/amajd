import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Older_H extends StatelessWidget {
  const Older_H({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Olders",
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
      body:Column(
        children: [
          Container(
            width:double.infinity,
            height: 200,
            child:Image.asset("images/oldr.png" ,
              fit: BoxFit.fill,),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
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
                        onTap: (){
                          Navigator.of(context).pushNamed("Updat_Stat_Health");
                        },
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
          ),
        ],
      ),
    );
  }
}
