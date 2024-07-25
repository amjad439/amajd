import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Creat_Social_Activity extends StatelessWidget {
  const Creat_Social_Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Creat_Social_Activity" ,
        style: TextStyle(
          fontSize:25
        ),),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width:double.infinity,
              height: MediaQuery.of(context).size.height*0.2,
              child:Image.asset("images/Social_Activity.png" ,
                fit: BoxFit.fill,),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
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
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  TextFormField(
                    maxLength: 20,
                    keyboardType:TextInputType.name,
                    decoration:InputDecoration(
                      prefixIcon:Icon(Icons.location_city),
                      labelText:"Location",
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
                    height: MediaQuery.of(context).size.height*0.05,
                  ),
                  TextFormField(
                    keyboardType:TextInputType.datetime,
                    decoration:InputDecoration(
                      prefixIcon:Icon(Icons.hourglass_bottom_outlined),
                      labelText:"Time",
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
                    height: MediaQuery.of(context).size.height*0.02,
                  ),
                  ElevatedButton(
                    onPressed: (){
                    },
                    child: Text("Create",
                      style:TextStyle(
                          fontSize:20
                      ),),
                    style:ElevatedButton.styleFrom(
                        padding:EdgeInsets.all(18)
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
