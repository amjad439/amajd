import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Add_Social_Admin extends StatefulWidget {
  const Add_Social_Admin({super.key});

  @override
  State<Add_Social_Admin> createState() => _Add_Social_AdminState();
}

class _Add_Social_AdminState extends State<Add_Social_Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              width:double.infinity,
              height: MediaQuery.of(context).size.height*0.2,
              child:Image.asset("images/person4.png" ,
                fit: BoxFit.fill,),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.01,
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
                    labelText:"First_Name",
                    labelStyle:TextStyle(
                      fontSize:25,
                    ),
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.04,
                ),
                TextFormField(
                  keyboardType:TextInputType.name,
                  decoration:InputDecoration(
                    prefixIcon:Icon(Icons.person),
                    labelText:"Last_Name",
                    labelStyle:TextStyle(
                      fontSize:25,
                    ),
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.04,
                ),
                TextFormField(
                  keyboardType:TextInputType.name,
                  decoration:InputDecoration(
                    prefixIcon:Icon(Icons.edit),
                    labelText:"Age",
                    labelStyle:TextStyle(
                      fontSize:25,
                    ),
                    border:OutlineInputBorder(
                      borderRadius:BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                   height: MediaQuery.of(context).size.height*0.04,
                ),
                Container(
                  width:MediaQuery.of(context).size.width*5,
                  child: ElevatedButton(
                    onPressed: (){},
                    child:Text("Confirm",
                      style: TextStyle(
                        fontSize: 20,
                      ),),

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
