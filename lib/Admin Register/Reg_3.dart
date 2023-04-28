// import 'dart:html';
// ignore_for_file: unnecessary_const, avoid_print, unused_import, sized_box_for_whitespace


import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../main.dart';
import 'Reg_1.dart';
import 'Reg_2.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart';

  String _selectedRole = "Role";
  final _roleList = ["Admin", "Institute", "Staff", "Teacher"];
  int radio = 1;
  String gender = "";

class SignUp_3 extends StatefulWidget {
  SignUp_3({super.key});

  @override
  State<SignUp_3> createState() => _SignUp_3State();
}

// ignore: camel_case_types
class _SignUp_3State extends State<SignUp_3> {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Raste.signUp_2);
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
                          ).pOnly(left: 5),
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
                          gradient: LinearGradient(
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
               Text(
                  "Admin ",
                  style: TextStyle(
                    fontFamily: 'abel',
                    fontSize: 33,
                    // letterSpacing: 1,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Text(
                    "Register",
                    style: TextStyle(
                      fontFamily: 'abel',
                        fontSize: 33,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(187, 0, 115, 255)
                    ),
                  ),
                ],
              ).pOnly(bottom: 10, top: 80),
          
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Role, Gender ",
                    style: TextStyle(
                        fontFamily: 'abel',
                        letterSpacing: 1,
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(185, 172, 172, 172)),
                  ),
                ],
              ).pOnly(bottom: 55),

              
              Container(
                width: 310,
                child: DropdownButtonFormField<String>(
                    elevation: 15,
                    isDense: true,
                    isExpanded: true,
              
                    decoration:  InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                          fillColor: const Color.fromARGB(51, 255, 255, 255),
                          // filled: false,
          
                             focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 213, 11, 11)),
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                              ),
          
                          border:  const OutlineInputBorder(
                            borderSide: BorderSide(  
                            color: Color.fromARGB(255, 0, 0, 0)),
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                             ),
          
                              focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.solid ,color: Color.fromARGB(2255, 0, 115, 255)),
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                              ),
          
                          // labelText: "Role",
                          label: Row(
                            children: const [
                               Text(
                                "Role",
                                style: TextStyle( 
                                  fontFamily: 'abel',
                                    color: Color.fromARGB(255, 128, 128, 128),
                                    // letterSpacing: 1.3,
                                    // height: 1.8,
                                    fontSize: 16),
                              )
                            ],
                          ).pOnly( ),
          
                          prefixIcon: const GradientIcon(
                            Icons.person_add,
                            size: 32,
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 157, 206, 244),
                                Color.fromARGB(255, 0, 115, 255)
                              ],
                              begin: Alignment.bottomCenter,
                            ),  
                          ).pOnly(left: 15, right: 20),
          
          
                        ),
                    iconSize: 45,
                    icon: const GradientIcon(
                      Icons.arrow_drop_down,
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 157, 206, 244),
                          Color.fromARGB(255, 0, 115, 255)
                        ],
                        begin: Alignment.bottomCenter,
                      ),
                    ).pOnly(right: 13),
              
                    items: _roleList
                        .map((role) => DropdownMenuItem(
                              value: role,
                              child: Row(
                                children: [
                                  // const Icon(
                                  //   Icons.circle,
                                  //   size: 13,
                                  //   color: Color.fromARGB(255, 129, 37, 152),
                                  // ).pOnly(left: 15, right: 15),
                                  Text(role)
                                ],
                              ),
                            ))
                        .toList(),
              
                    onChanged: (genderList) {
                      setState(() {
                        _selectedRole  = genderList as String;
                      });
        
                    }),
              ).pOnly(right: 40, bottom: 30),
          
              Row(
                children: [
                  Radio(
                    value: 0,
                    groupValue: radio,
                    onChanged: (check) {
                      setState(() {
                       if (check == 0) {
                        radio = check as int;
                        gender = "Male";
                       }
                      });
                    },
                  ).pOnly(right: 15),
                  "Male".text.fontFamily('abel').size(15).make()
                ],
              ).pOnly(left: 40),
          
              Row(
                children: [
                  Radio(
                    value: 2,
                    groupValue: radio,
                    // visualDensity: VisualDensity(horizontal: 10.0, vertical: 10.0),
                    onChanged: (check) {
                      setState(() {
                        if (check == 2 ) {
                          radio = check as int;
                           gender = "Female";
                        }
                      });
                    },
                  ).pOnly(right: 15),
                  "Female".text.fontFamily('abel').size(15).make()
                ],
              ).pOnly(left: 40, bottom: 145),
              
                InkWell(
                onTap: () => {
                   if (_selectedRole == "Role") {
                     _selectedRole = "No Role selected"
                    },
                    Navigator.pushNamed(context, Raste.signUp_4)
                },
                borderRadius: BorderRadius.circular(40),
                splashColor: const Color.fromARGB(255, 84, 162, 251),
          
                child: Ink(
                    width: 150,
                    height: 60,
                    decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(blurRadius: 3.3),
                          BoxShadow(blurStyle: BlurStyle.normal),
                          BoxShadow(offset: Offset.zero)
                        ],
                        borderRadius: BorderRadius.circular(40),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 154, 210, 253),
                            Color.fromARGB(255, 27, 129, 255)
                          ],
                          end: Alignment.topLeft,
                          begin: Alignment.topRight,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ).pOnly(right: 12, left: 20),
                        const Icon(
                          Icons.arrow_forward_ios, size: 24, weight: 80.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ],
                    )),
              ).pOnly(left: 210)
            ],
          ),
        ),
      ),
      );
  }
  

}
