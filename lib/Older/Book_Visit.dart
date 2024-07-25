import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Book_Visit extends StatelessWidget {
  const Book_Visit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Book_Visit"
        ),
      ),
      body: Column(
        children: [
          Container(
            width:double.infinity,
            height: 200,
            child:Image.asset("images/visit.png" ,
              fit: BoxFit.fill,),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all( 10),
              child:ListView.separated(
                  separatorBuilder:(context , i){
                    return SizedBox(height: 20,);
                  },
                  itemCount:5,
                  itemBuilder:(context , i ){
                    return ListTile(
                      trailing: InkWell(
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
                      leading: CircleAvatar(
                        radius:30,
                        backgroundImage: AssetImage("images/person1.png",
                        ),
                      ),
                      title:Text("Majd Mohamad Almohamad ",
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight:FontWeight.bold,
                        ),),
                      subtitle:Text("available",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
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
