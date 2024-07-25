import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Creat_Profile extends StatelessWidget {
  const Creat_Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width:double.infinity,
              height: 200,
              child:Image.asset("images/olderp.png" ,
                fit: BoxFit.fill,),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin:EdgeInsets.all(30),
              child: Form(
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
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
                      height: 40,
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
                      height: 40,
                    ),
                    TextFormField(
                      keyboardType:TextInputType.emailAddress,
                      decoration:InputDecoration(
                        prefixIcon:Icon(Icons.email),
                        labelText:"Email",
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
                      height: 40,
                    ),
                    TextFormField(
                      decoration:InputDecoration(
                        prefixIcon:Icon(Icons.health_and_safety),
                        labelText:"State_Health",
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
                      child:Text("Saved",
                        style: TextStyle(
                          fontSize: 30,
                        ),),
                      style:ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 5 , horizontal: 120)
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
