import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Updat_Profil extends StatelessWidget {
  const Updat_Profil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Updat_Profile",
          style: TextStyle(
            fontSize: 25,
          ),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width:double.infinity,
              height: 250,
              child:Image.asset("images/Manager.png" ,
                fit: BoxFit.fill,),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  TextFormField(
                    maxLength: 20,
                    keyboardType:TextInputType.name,
                    decoration:InputDecoration(
                      prefixIcon:Icon(Icons.person),
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
                    height: 10,
                  ),
                  TextFormField(
                    maxLength: 20,
                    keyboardType:TextInputType.number,
                    decoration:InputDecoration(
                      prefixIcon:Icon(Icons.edit),
                      labelText:"Age",
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
                    height: 10,
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
                        borderRadius:BorderRadius.all(
                            Radius.circular(20)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  ElevatedButton(
                    onPressed: (){
                    },
                    child: Text("Save",
                      style:TextStyle(
                          fontSize:20
                      ),),
                    style:ElevatedButton.styleFrom(
                        padding:EdgeInsets.symmetric(horizontal: 150)
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
