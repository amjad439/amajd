import 'package:flutter/material.dart';

class Olde extends StatefulWidget {
  const Olde({super.key});

  @override
  _OldersState createState() => _OldersState();
}

class _OldersState extends State<Olde> {
  String selectedButton = ""; // لتتبع الزر الذي تم النقر عليه

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Olders",
            style: TextStyle(
              fontSize: 30,
            ),
          ),

        ),
        body: Column(
            children: [
              // الشريط العلوي من الأزرار
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Wrap(
                  spacing: 10.0,
                  children: [
                    SizedBox(height: 28,),
                    _buildButton("Walker"),
                    _buildButton("Stick"),
                 //   _buildButton("Chess"),
                  //  _buildButton("Trips"),
                    _buildButton("Diabres"),
               //     _buildButton("Seminar"),
               //     _buildButton("More"),
                  ],
                ),
              ),

              // زر "Show More Statistics"

              // القائمة


            ]
        )
    );
  }


  // دالة لبناء الأزرار مع تغيير لون الزر عند النقر عليه
  Widget _buildButton(String label) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedButton = label; // تحديد الزر الذي تم النقر عليه
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: selectedButton == label ? Colors.yellow: Colors.white,
        textStyle: TextStyle(fontSize: 18),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: Text(label),
    );
  }
}
