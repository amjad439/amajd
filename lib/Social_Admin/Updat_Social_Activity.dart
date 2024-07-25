import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Updat_Social_Activity extends StatelessWidget {
  const Updat_Social_Activity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Update_Social_Activity"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width:double.infinity,
              height: 250,
              child:Image.asset("images/Social_Activity.png" ,
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
                    height: 10,
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
                    height: MediaQuery.of(context).size.height*0.01,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.5,
                    child: ElevatedButton(
                      onPressed: (){
                      },
                      child: Text("Update",
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
