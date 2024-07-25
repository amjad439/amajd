import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage_M extends StatelessWidget {
   HomePage_M({super.key});

  List names = [
    {
      "name" : "Social_admin",
      "image" : "images/Social_Admin.png",
      "routes" : "Social_Admin",
    },
    {
      "name" : "Health_Admin",
      "image" : "images/Admin_Health.png",
      "routes" : "Health_Admin",
    },
    {
      "name" : "Social_Volunteer",
      "image" : "images/Social_Volunteer.png",
      "routes" : "Social_Volunteer",
    },
    {
      "name" : "Health_Volunter",
      "image" : "images/Health_Volunteer.png",
      "routes" : "Health_Volunteer",
    },
    {
      "name" : "Olders",
      "image" : "images/Olders.png",
      "routes" : "Olders",
    },
    {
      "name" : "Health_Activity",
      "image" : "images/Health_Activity.png",
      "routes" : "Health_Activity",
    },
    {
      "name" : "Social_Activity",
      "image" : "images/Social_Activity.png",
      "routes" : "Social_Activity",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Padding(
          padding: const EdgeInsets.only(left:2),
          child: Text("HomePage",
            style: TextStyle(
              fontSize: 30,
            ),),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height*0.05),

             Container(
               width: MediaQuery.of(context).size.width*0.95,
               child: TextField(
                decoration:InputDecoration(
                  prefixIcon: IconButton(
                    onPressed: (){},
                    icon:Icon(Icons.search,
                    size: MediaQuery.of(context).size.width*0.1,) ,
                  ),
                  hintText: "Search for any admin or older",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,

                  ),
                  filled: true,
                  fillColor:Colors.grey[200],
                  border:OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                  ),
                ),
                style: TextStyle(
                  fontSize: 20,
                ),
                cursorWidth: 3,
                cursorHeight: 28,
                textInputAction: TextInputAction.search,
                           ),
             ),

          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 30),

              child:GridView.builder(
                  itemCount:7,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                  ),
                  itemBuilder:(context , i ){
                    return Column(
                      children: [
                        MaterialButton(
                          onPressed: (){
                            Navigator.of(context).pushNamed(names[i]["routes"]);
                          },
                          child: Container(
                            width:MediaQuery.of(context).size.width*0.8,
                            height: MediaQuery.of(context).size.height*0.2,
                            decoration:BoxDecoration(
                              color:Colors.grey,
                              image:DecorationImage(
                                fit:BoxFit.fill,

                                image: AssetImage( names[i]["image"],),
                              ),
                            ),

                          ),
                        ),
                        Text(names[i]["name"],
                          style:TextStyle(
                            fontSize:20,
                          ),),
                      ],
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
