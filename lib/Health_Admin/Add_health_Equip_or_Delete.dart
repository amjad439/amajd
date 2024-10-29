// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Activity_H extends StatelessWidget {
//    Activity_H({super.key});
//   List ActivityH =[
//     {
//       "name" : "Diapers",
//       "image" : "images/diapers.png",
//       "routes" : "Diapers",
//     },
//     {
//       "name" : "SethoScop",
//       "image" : "images/SothoScop.png",
//       "routes" : "SethoScop",
//     },
//     {
//       "name" : "Walker",
//       "image" : "images/Walker.png",
//       "routes" : "Walker",
//     },
//     {
//       "name" : "Stick",
//       "image" : "images/Stick.png",
//       "routes" : "Stick",
//     },
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title:Text("Health_Equipments",
//           style: TextStyle(
//             fontSize: 30,
//           ),),
//         actions: [
//           Container(
//             margin: EdgeInsets.only(right: 20),
//             child: IconButton(onPressed: (){
//               Navigator.of(context).pushNamed("Creat_Health_Activity");
//             },
//               icon: Icon(Icons.add,
//                 size: 40,),
//             ),
//           ),
//         ],
//       ),
//       body:Column(
//         children: [
//          SizedBox(height: 40,),
//
//
//           Expanded(
//             child: GridView.builder(
//                 itemCount:4,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount:2,
//                     childAspectRatio: 0.9
//
//                 ),
//                 itemBuilder:(context , i ){
//                   return Column(
//                     children: [
//                       MaterialButton(
//                         onPressed: (){
//                           Navigator.of(context).pushNamed(ActivityH[i]["routes"]);
//                         },
//                         child: Container(
//                           width:150,
//                           height: 150,
//                           decoration:BoxDecoration(
//                             image:DecorationImage(
//                               fit:BoxFit.fill,
//                               image: AssetImage( ActivityH[i]["image"],
//                               ),
//                             ),
//                           ),
//
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           Container(
//                             margin :EdgeInsets.only(left: 40),
//                             child: Text(ActivityH[i]["name"],
//                               style:TextStyle(
//                                 fontSize:20,
//                               ),),
//                           ),
//                           Expanded(
//                             child: Container(
//                               margin :EdgeInsets.only(right: 30),
//                               child: IconButton(
//                                 onPressed: (){},
//                                 icon: Icon(Icons.delete),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   );
//                 }
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(90.0),
//             child: ElevatedButton(
//               onPressed: (){
//               },
//               child: Text("Show Statistics",
//                 style:TextStyle(
//                     fontSize:20
//                 ),),
//               style:ElevatedButton.styleFrom(
//                  // padding: EdgeInsets.symmetric(horizontal: 100)
//               ),
//
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//

// import 'package:flutter/material.dart';
// import 'package:dio/dio.dart';
//
// class Activity_H extends StatefulWidget {
//   @override
//   _Activity_HState createState() => _Activity_HState();
// }
//
// class _Activity_HState extends State<Activity_H> {
//   List<Activity> ActivityH = [];
//
//   @override
//   void initState() {
//     super.initState();
//     fetchData();
//   }
//
//   void fetchData() async {
//     try {
//       var response = await Dio().get('http://192.168.1.5:8000/api/health-equipments/search');
//       if (response.data['success']) {
//         setState(() {
//           ActivityH = (response.data['data'] as List)
//               .where((item) => item['Name'] != 'new equipment')
//               .map((item) => Activity(
//             name: item['Name'] ?? 'Unknown',
//             id: item['EquipmentID'].toString(), // استخدام EquipmentID بدلاً من id
//             description: item['Description'] ?? 'No description available',
//             createdAt: item['created_at'] ?? 'Unknown date',
//             updatedAt: item['updated_at'] ?? 'Unknown date',
//           ))
//               .toList();
//         });
//       }
//     } catch (e) {
//       print('Failed to fetch data: $e');
//     }
//   }
//
//   void deleteItem(Activity activity, int index) async {
//     // تحقق من أن الـ EquipmentID هو 2
//     if (activity.id == '2') {
//       try {
//         print('Attempting to delete item with id: ${activity.id}'); // طباعة الـ ID للتحقق منه
//         var response = await Dio().delete('http://192.168.1.5:8000/api/health-equipments/${activity.id}');
//         if (response.data['success']) {
//           setState(() {
//             ActivityH.removeAt(index);
//           });
//           print('Item deleted successfully');
//         } else {
//           print('Failed to delete item: ${response.data}');
//         }
//       } catch (e) {
//         if (e is DioException && e.response?.statusCode == 404) {
//           print('Error: Resource not found (404). Make sure the ID is correct and exists on the server.');
//         } else {
//           print('Error deleting item: $e');
//         }
//       }
//     } else {
//       print('This item cannot be deleted as it does not have EquipmentID 2');
//     }
//   }
//
//   void showDeleteDialog(BuildContext context, Activity activity, int index) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text("Confirm Delete"),
//           content: Text("Are you sure you want to delete this item?"),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text("No"),
//             ),
//             TextButton(
//               onPressed: () {
//                 deleteItem(activity, index);
//                 Navigator.of(context).pop();
//               },
//               child: Text("Yes"),
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Health Equipments",
//           style: TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pushReplacementNamed("HomePage_HA");
//           },
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.of(context).pushReplacementNamed("Creat_Health_Activity");
//             },
//             icon: Icon(
//               Icons.add,
//               size: 30,
//             ),
//           ),
//         ],
//       ),
//       body: ActivityH.isEmpty
//           ? Center(child: CircularProgressIndicator())
//           : Padding(
//         padding: const EdgeInsets.all(10.0),
//         child: GridView.builder(
//           itemCount: ActivityH.length,
//           gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2,
//             childAspectRatio: 0.75,
//             crossAxisSpacing: 10,
//             mainAxisSpacing: 10,
//           ),
//           itemBuilder: (context, i) {
//             final activity = ActivityH[i];
//             return Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               elevation: 5,
//               shadowColor: Colors.grey.withOpacity(0.5),
//               child: Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       activity.name ?? 'No name',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 20,
//                         color: Colors.black87,
//                       ),
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     SizedBox(height: 5),
//                     Text(
//                       "createdAt: ${activity.createdAt}" ?? 'Unknown date',
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.black54,
//                       ),
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                     Spacer(),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         IconButton(
//                           onPressed: () {
//                             showDeleteDialog(context, activity, i);
//                           },
//                           icon: Icon(Icons.delete, color: Colors.red),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class Activity {
//   final String name;
//   final String id;
//   final String description;
//   final String createdAt;
//   final String updatedAt;
//
//   Activity({
//     required this.name,
//     required this.id,
//     required this.description,
//     required this.createdAt,
//     required this.updatedAt,
//   });
// }
//
//


import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:untitled/Health_Admin/HomePage_Health_Admin.dart';
import 'package:untitled/Social_Admin/HomePageSocialAdmin.dart';

class Activity_H extends StatefulWidget {
  @override
  _Activity_HState createState() => _Activity_HState();
}

class _Activity_HState extends State<Activity_H> {
  List<Activity> activities = [];
  final Dio _dio = Dio();

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  Future<void> _fetchData() async {
    try {
      final response = await _dio.get('http://192.168.1.5:8000/api/health-equipments/search');
      if (response.data['success']) {
        setState(() {
          activities = (response.data['data'] as List)
              .where((item) => item['Name'] != 'new equipment')
              .map((item) => Activity(
            name: item['Name'] ?? 'Unknown',
            id: item['EquipmentID'].toString(),
            description: item['Description'] ?? 'No description available',
            createdAt: item['created_at'] ?? 'Unknown date',
            updatedAt: item['updated_at'] ?? 'Unknown date',
          ))
              .toList();
        });
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to fetch data')),
      );
    }
  }

  Future<void> _deleteActivity(String id, int index) async {
    try {
      final url = 'http://192.168.1.5:8000/api/health-equipments/$id';
      final response = await _dio.delete(url);

      if (response.statusCode == 200 || response.statusCode == 204) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            backgroundColor: Colors.green,
              content: Text('Activity deleted successfully'
          )),
        );
        setState(() {
          activities.removeAt(index);
        });
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to delete activity')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to delete activity')),
      );
    }
  }

  void _confirmDelete(String id, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Delete'),
          content: Text('Are you sure you want to delete this activity?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('No'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _deleteActivity(id, index);
              },
              child: Text('Yes'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Health Equipments",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomePage_Health_Admin()));
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacementNamed("Creat_Health_Activity");
            },
            icon: Icon(Icons.add, size: 30),
          ),
        ],
      ),
      body: activities.isEmpty
          ? Center(child: CircularProgressIndicator())
          : Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: activities.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, i) {
            final activity = activities[i];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              elevation: 5,
              shadowColor: Colors.grey.withOpacity(0.5),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      activity.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black87,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5),
                    Text(
                      "createdAt: ${activity.createdAt}",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () => _confirmDelete(activity.id, i),
                          icon: Icon(Icons.delete, color: Colors.red),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Activity {
  final String name;
  final String id;
  final String description;
  final String createdAt;
  final String updatedAt;

  Activity({
    required this.name,
    required this.id,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
  });
}


