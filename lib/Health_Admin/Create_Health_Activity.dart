import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Creat_Health_Activity extends StatelessWidget {
  const Creat_Health_Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Creat_Health_Activity" ,
          style: TextStyle(
              fontSize:25
          ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width:double.infinity,
              height: 450,
              child:Image.asset("images/Health_Activity.png" ,
                fit: BoxFit.fill,),
            ),
            SizedBox(
              height: 70,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  TextFormField(
                    maxLength: 20,
                    keyboardType:TextInputType.name,
                    decoration:InputDecoration(
                      prefixIcon:Icon(Icons.edit),
                      labelText:"Name",
                      labelStyle:TextStyle(
                        fontSize:25,
                      ),
                      border:OutlineInputBorder(
                        borderRadius:BorderRadius.all(
                            Radius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height*0.008,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*5,
                    child: ElevatedButton(
                      onPressed: (){
                      },
                      child: Text("Create",
                        style:TextStyle(
                            fontSize:20
                        ),),
                      
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

