import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Updat_Stat_Health extends StatefulWidget {
  const Updat_Stat_Health({super.key});

  @override
  State<Updat_Stat_Health> createState() => _Updat_Stat_HealthState();
}

class _Updat_Stat_HealthState extends State<Updat_Stat_Health> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width:double.infinity,
              height: 200,
              child:Image.asset("images/oldr.png" ,
                fit: BoxFit.fill,),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
                border:Border.all(
                    width: 1.5
                )
            ),
            child:Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                  ),
                  title: Text("Name :",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight:FontWeight.bold,
                    ),
                      ),
                  subtitle:Text("Age :"
                  ) ,
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration:InputDecoration(
                    prefixIcon:Icon(Icons.health_and_safety),
                    labelText:"Updat_State_Health",
                    labelStyle:TextStyle(
                      fontSize:25,
                    ),
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: (){},
                  child:Text("Confirm",
                    style: TextStyle(
                      fontSize: 20,
                    ),),
                  style:ElevatedButton.styleFrom(
                      padding:EdgeInsets.symmetric(horizontal: 100, vertical: 10)
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}

