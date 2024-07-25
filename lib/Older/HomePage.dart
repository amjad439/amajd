import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage_O extends StatelessWidget {
  HomePage_O({super.key});
  List names = [
    {
      "name" : "Book_Activ",
      "image" : "images/bookactiv.png",
      "routes" : "Book_Activ",
    },
    {
      "name" : "Book_Visit",
      "image" : "images/bookvisit.png",
      "routes" : "Book_Visit",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin:EdgeInsets.only(left: 20, right: 20,top:150),
            child: TextField(
              decoration:InputDecoration(
                prefixIcon: IconButton(
                  onPressed: (){},
                  icon:Icon(Icons.search,
                    size: 33,) ,
                ),
                hintText: "Search for any activ",
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
          SizedBox(
            height: 150,
          ),
          Expanded(
            child: GridView.builder(
                itemCount:2,
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
                          width:150,
                          height: 150,
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
        ],
      ),

    );
  }
}
