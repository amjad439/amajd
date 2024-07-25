Expanded(
child: GridView.builder(
itemCount:4,
gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount:2,
childAspectRatio: 0.8

                ),
                itemBuilder:(context , i ){
                  return Column(
                    children: [
                      MaterialButton(
                        onPressed: (){
                          Navigator.of(context).pushNamed(ActivityS[i]["routes"]);
                        },
                        child: Container(
                          width:150,
                          height: 150,
                          decoration:BoxDecoration(
                            image:DecorationImage(
                              fit:BoxFit.fill,
                              image: AssetImage( ActivityS[i]["image"],
                              ),
                            ),
                          ),

                        ),
                      ),
                      Text("${ActivityS[i]["name"]} : ${ActivityS[i]["time"]}",
                        style:TextStyle(
                          fontSize:20,
                        ),),
                      Text("(${ActivityS[i]["location"]})",
                        style:TextStyle(
                          fontSize:15,
                        ),),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              margin :EdgeInsets.only(left: 30),
                              child: IconButton(
                                onPressed: (){
                                  Navigator.of(context).pushNamed("Updat_Social_Activity");
                                },
                                icon: Icon(Icons.edit ,),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin :EdgeInsets.only(right: 30),
                              child: IconButton(
                                  onPressed: (){},
                                  icon: Icon(Icons.delete),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }
            ),
          ),