// import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:velocity_x/velocity_x.dart';
import 'main.dart';

class SignUp_3 extends StatefulWidget {
   SignUp_3({super.key});

  @override
  State<SignUp_3> createState() => _SignUp_3State();
}

class _SignUp_3State extends State<SignUp_3> {
  final  _genderList = ["Teacher", "Staff", "Admin", "Institute"];

  String _selectedGender = "Authority";

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body:  Column(
          children: [
            Row(
                children: [
                   InkWell(
                    onTap: () {
                       Navigator.pushNamed(
                      context, Raste.signUp_1
                    );
                  },
                     child: SizedBox(
                        width: 120,
                        height: 60,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            
                            const Icon(
                              Icons.arrow_back_ios,
                              color: Color.fromARGB(255, 0, 115, 255),
                            ),
                            const Text(
                              "Back",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 0, 115, 255)),
                            ).pOnly( left: 5),
                          ],
                        ).pOnly(left: 1, bottom: 3), 
                     ),
                   ),
                    Padding(
                      padding: const EdgeInsets.only(left: 140, top: 70),
                      child: Transform(
                        transform: Matrix4.identity()..rotateZ(12.4),
                        child: Container(
                          width: 150,
                          height: 115,
                          decoration: const BoxDecoration(
                            boxShadow: [BoxShadow(blurRadius: 1.3)],
                            gradient: LinearGradient (
                              colors: [
                                Color.fromARGB(255, 157, 206, 244),
                                Color.fromARGB(255, 0, 115, 255),
                              ],
                              begin: Alignment.centerLeft,
                              // end: Alignment.centerRight
                            ),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.elliptical(220.0, 100.0),
                                topLeft: Radius.elliptical(250.3, 250.3),
                                bottomLeft: Radius.elliptical(530.50, 700.3)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Personal ",
                  style: TextStyle(
                    fontFamily: 'abel',
                    fontSize: 33,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Text(
                  "Detail",
                  style: TextStyle(
                      fontSize: 33,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(187, 0, 115, 255)),
                ),
              ],
            ).pOnly( bottom: 10, top: 80),

            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                      "Email ID, Address, City ",
                      style: TextStyle(
                        fontFamily: 'abel',
                        letterSpacing: 1,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(185, 172, 172, 172)),
                  ),
              ],
            ).pOnly(bottom: 55),

            // RadioListTile(value: value, groupValue: groupValue, onChanged: onChanged),

            DropdownButton<String>(
            items: _genderList.map(
              (gender) =>  DropdownMenuItem(value: gender, child: Text(gender))
            ).toList(),

            hint: Text(_selectedGender),
            // value: _selectedGender,
            
            onChanged: (genderList) {
              setState(() { _selectedGender = genderList as String;  });
            }
            
          )
        ],
       ),
      ),
    );
  }
}