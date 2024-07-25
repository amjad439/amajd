import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Update_Profile_M extends StatelessWidget {
  const Update_Profile_M({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Update_Profile_M",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width:double.infinity,
              height: MediaQuery.of(context).size.height*0.2,
              child:Image.asset("images/Manager.png" ,
                fit: BoxFit.fill,),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.05,
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
                      labelText:"First_Name",
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
                    keyboardType:TextInputType.name,
                    decoration:InputDecoration(
                      prefixIcon:Icon(Icons.edit),
                      labelText:"Last_name",
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
                    height: MediaQuery.of(context).size.height*0.01
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
                    height: MediaQuery.of(context).size.height*0.04
                  ),
                  TextFormField(
                    maxLength: 3,
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

                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      child: ElevatedButton(
                        onPressed: (){
                        },
                        child: Text("Save",
                          style:TextStyle(
                              fontSize:20
                          ),),

                      ),
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
