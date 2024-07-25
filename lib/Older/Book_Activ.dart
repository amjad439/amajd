import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Book_Activ extends StatelessWidget {
  const Book_Activ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Book_Active"
        ),
      ),
      body: Column(
        children: [
          Container(
            width:double.infinity,
            height: 200,
            child:Image.asset("images/activ.png" ,
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
                        leading: InkWell(
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.all(15),
                            color: Colors.blue,

                            child: Text(
                              "Book",
                              style: TextStyle(
                                fontSize:25,
                                color: Colors.white,

                              ),
                            ),
                          ),
                        ),
                        title:Text("Chees ",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight:FontWeight.bold,
                          ),),
                        subtitle:Text("Damascuse",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )),
                        trailing:Text("10.15 PM",
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            )) ,
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
