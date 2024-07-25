import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Health_Volunteer/HomePage.dart';
import 'Social_Volunteer/Homepage.dart';

class Login_Social_Admin extends StatefulWidget {
  const Login_Social_Admin({super.key});

  @override
  State<Login_Social_Admin> createState() => _Login_Social_AdminState();
}

class _Login_Social_AdminState extends State<Login_Social_Admin> {
  bool _obscureText = true;
  String? password;
  String? email;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void Login() {
    if (email != null && password != null) {
      if (password!.isNotEmpty && email!.isNotEmpty) {
        if (password![0] == 'A' && password![password!.length - 1] == 'S') {
          Navigator.of(context).pushNamed('HomePage_SocialA', arguments: email);
        } else if (password![0] == 'A' && password![password!.length - 1] == 'H') {
          Navigator.of(context).pushNamed('HomePage_Health_Admin', arguments: email);
        } else if (password == "123456789") {
          Navigator.of(context).pushNamed('HomePage_Manager', arguments: email);
        } else if (password![0] == 'O' && password![password!.length - 1] == 'R') {
          Navigator.of(context).pushNamed('HomePage_O');
        } else if (password![0] == 'V' && password![password!.length - 1] == 'S') {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Homepag_VS()));
        } else if (password![0] == 'V' && password![password!.length - 1] == 'H') {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage_HV()));
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
                  "There is an error in the inserted data.",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              );
            },
          );
        }
      } else {
        // إذا كانت القيم فارغة
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
                "Please fill in all fields.",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            );
          },
        );
      }
    } else {
      // إذا كانت القيم null
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
              "Please fill in all fields.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 90,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.001,
                  ),
                  Icon(
                    Icons.login,
                    size: MediaQuery.of(context).size.width * 0.2,
                    color: Colors.blue,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: 25,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: TextFormField(
                  obscureText: _obscureText,
                  onChanged: (password1) {
                    password = password1;
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: GestureDetector(
                      onTap: _togglePasswordVisibility,
                      child: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                      ),
                    ),
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 25,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              ElevatedButton(
                onPressed: Login,
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 150, vertical: 10),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You don't have an account?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed("Sign_UpSA");
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
    );
  }
}
