// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import 'Health_Volunteer/HomePage.dart';
// import 'Social_Volunteer/Homepage.dart';
//
// class Sign_UpSA extends StatefulWidget {
//   Sign_UpSA({super.key});
//
//   @override
//   State<Sign_UpSA> createState() => _Sign_UpSAState();
// }
//
// class _Sign_UpSAState extends State<Sign_UpSA> {
//   String? email;
//   String? password;
//   GlobalKey<FormState> formstate = new GlobalKey<FormState>();
//
//   void signup() {
//     if (formstate.currentState!.validate()) {
//       if (password!.isNotEmpty && password![0] == 'A' && password![password!.length - 1] == 'S') {
//         Navigator.of(context).pushReplacementNamed("HomePage_SocialA");
//       } else if (password!.isNotEmpty && password![0] == 'A' && password![password!.length - 1] == 'H') {
//         Navigator.of(context).pushReplacementNamed("HomePage_Health_Admin");
//       } else if (password == "123456789") {
//         Navigator.of(context).pushReplacementNamed("HomePage_Manager");
//       } else if (password!.isNotEmpty && password![0] == 'O' && password![password!.length - 1] == 'R') {
//         Navigator.of(context).pushReplacementNamed("HomePage_O");
//       } else if (password!.isNotEmpty && password![0] == 'V' && password![password!.length - 1] == 'S') {
//         Navigator.of(context).pushReplacementNamed("Homepag_VS");
//       } else if (password!.isNotEmpty && password![0] == 'V' && password![password!.length - 1] == 'H') {
//         Navigator.of(context).pushReplacementNamed("HomePage_HV");
//       } else {
//         showDialog(
//           context: context,
//           builder: (context) {
//             return AlertDialog(
//               title: Text(
//                 "Warning",
//                 style: TextStyle(
//                   fontSize: 30,
//                   color: Colors.red,
//                 ),
//               ),
//               content: Text(
//                 "There is an error in the data entry.",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             );
//           },
//         );
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         margin: EdgeInsets.all(30),
//         child: SingleChildScrollView(
//           child: Form(
//             key: formstate,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   "SignUp",
//                   style: TextStyle(
//                     fontSize: 90,
//                     color: Colors.blue,
//                   ),
//                 ),
//                 SizedBox(height: 40),
//                 TextFormField(
//                   validator: (text) {
//                     if (text == null || text.isEmpty) {
//                       return 'Please Enter Name';
//                     }
//                     if (text.length > 20) {
//                       return "Can't be longer than 20 characters";
//                     }
//                     return null;
//                   },
//                   keyboardType: TextInputType.name,
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.person),
//                     labelText: "Name",
//                     labelStyle: TextStyle(
//                       fontSize: 25,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 40),
//                 TextFormField(
//                   keyboardType: TextInputType.number,
//                   validator: (value) {
//                     if (value == null || value.isEmpty) {
//                       return 'Please Enter Age';
//                     }
//                     int? age = int.tryParse(value);
//                     if (age == null) {
//                       return 'Age must be a whole number';
//                     }
//                     if (age < 18 || age > 120) {
//                       return "Age can't be younger than 18 or older than 120";
//                     }
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.edit),
//                     labelText: "Age",
//                     labelStyle: TextStyle(
//                       fontSize: 25,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 40),
//                 TextFormField(
//                   keyboardType: TextInputType.emailAddress,
//                   validator: (text) {
//                     if (text == null || text.isEmpty) {
//                       return 'Please Enter Email';
//                     }
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.email),
//                     labelText: "Email",
//                     labelStyle: TextStyle(
//                       fontSize: 25,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 40),
//                 TextFormField(
//                   obscureText: true,
//                   onChanged: (password1) {
//                     password = password1;
//                   },
//                   validator: (text) {
//                     if (text == null || text.isEmpty) {
//                       return 'Please Enter Password';
//                     }
//                     return null;
//                   },
//                   decoration: InputDecoration(
//                     prefixIcon: Icon(Icons.lock_outline),
//                     suffixIcon: Icon(Icons.remove_red_eye_outlined),
//                     labelText: "Password",
//                     labelStyle: TextStyle(
//                       fontSize: 25,
//                     ),
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 80),
//                 ElevatedButton(
//                   onPressed: signup,
//                   child: Text(
//                     "Signup",
//                     style: TextStyle(
//                       fontSize: 30,
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     padding: EdgeInsets.symmetric(vertical: 5, horizontal: 120),
//                   ),
//                 ),
//                 SizedBox(height: 40),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       "If you have an Account",
//                       style: TextStyle(
//                         fontSize: 20,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     TextButton(
//                       onPressed: () {
//                         Navigator.of(context).pushNamed("Login_Social_Admin");
//                       },
//                       child: Text(
//                         "Click Here",
//                         style: TextStyle(
//                           fontSize: 20,
//                           color: Colors.blue,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Health_Admin/HomePage_Health_Admin.dart';
import 'package:untitled/Social_Admin/HomePageSocialAdmin.dart';

import 'Health_Volunteer/HomePage.dart';
import 'Manager/HomePage_Manager.dart';
import 'Social_Volunteer/Homepage.dart';


class Sign_UpSA extends StatefulWidget {
  Sign_UpSA({super.key});

  @override
  State<Sign_UpSA> createState() => _Sign_UpSAState();
}

class _Sign_UpSAState extends State<Sign_UpSA> {
  String? email;
  String? password;
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  void signup() {
    if (formstate.currentState!.validate()) {
      if (password!.isNotEmpty && password![0] == 'A' && password![password!.length - 1] == 'S') {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomePage_SocialA(email: email!),
          ),
        );
      } else if (password!.isNotEmpty && password![0] == 'A' && password![password!.length - 1] == 'H') {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomePage_Health_Admin(email: email!),
          ),
        );
      }
      else if (password == "123456789") {
        // الانتقال إلى الصفحة الرئيسية للمدير وتمرير البريد الإلكتروني
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomePageManager(email: email!),
          ),
        );
      } else if (password!.isNotEmpty && password![0] == 'O' && password![password!.length - 1] == 'R') {
        Navigator.of(context).pushReplacementNamed("HomePage_O");
      } else if (password!.isNotEmpty && password![0] == 'V' && password![password!.length - 1] == 'S') {
        Navigator.of(context).pushReplacementNamed("Homepag_VS");
      } else if (password!.isNotEmpty && password![0] == 'V' && password![password!.length - 1] == 'H') {
        Navigator.of(context).pushReplacementNamed("HomePage_HV");
      } else {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(
                "Warning",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                ),
              ),
              content: Text(
                "There is an error in the data entry.",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            );
          },
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Form(
            key: formstate,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SignUp",
                  style: TextStyle(
                    fontSize: 90,
                    color: Colors.blue,
                  ),
                ),
                SizedBox(height: 40),
                TextFormField(
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Please Enter Name';
                    }
                    if (text.length > 20) {
                      return "Can't be longer than 20 characters";
                    }
                    return null;
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    labelText: "Name",
                    labelStyle: TextStyle(
                      fontSize: 25,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                TextFormField(
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter Age';
                    }
                    int? age = int.tryParse(value);
                    if (age == null) {
                      return 'Age must be a whole number';
                    }
                    if (age < 18 || age > 120) {
                      return "Age can't be younger than 18 or older than 120";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.edit),
                    labelText: "Age",
                    labelStyle: TextStyle(
                      fontSize: 25,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Please Enter Email';
                    }
                    email = text; // تعيين قيمة البريد الإلكتروني
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: 25,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                TextFormField(
                  obscureText: true,
                  onChanged: (password1) {
                    password = password1;
                  },
                  validator: (text) {
                    if (text == null || text.isEmpty) {
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: Icon(Icons.remove_red_eye_outlined),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 25,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
                SizedBox(height: 80),
                ElevatedButton(
                  onPressed: signup,
                  child: Text(
                    "Signup",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 120),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If you have an Account",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed("Login_Social_Admin");
                      },
                      child: Text(
                        "Click Here",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

