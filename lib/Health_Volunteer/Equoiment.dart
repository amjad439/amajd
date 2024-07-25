import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Equoiment extends StatelessWidget {
  const Equoiment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width:double.infinity,
              height: 200,
              child:Image.asset("images/equpiment.png" ,
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
                TextFormField(
                  keyboardType:TextInputType.name,
                  decoration:InputDecoration(
                    prefixIcon:Icon(Icons.person),
                    labelText:"Full_Name_of_Older",
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
                TextFormField(
                  keyboardType:TextInputType.name,
                  decoration:InputDecoration(
                    prefixIcon:Icon(Icons.person),
                    labelText:"Title",
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
