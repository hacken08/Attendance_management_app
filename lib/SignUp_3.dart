// import 'dart:html';
// ignore_for_file: unnecessary_const, avoid_print

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:velocity_x/velocity_x.dart';
import 'main.dart';
import 'SignUp1.dart';
import 'SignUp_2.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart';

class SignUp_3 extends StatefulWidget {
  SignUp_3({super.key});

  @override
  State<SignUp_3> createState() => _SignUp_3State();
}
  // final _key = GlobalKey<FormState> ();

class _SignUp_3State extends State<SignUp_3> {
  final _genderList = ["Admin", "Institute", "Staff", "Teacher"];

  String _selectedRole = "Role";
  int radio = 1;
  String gender = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Form( key: signUp_key,
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
              ).pOnly(bottom: 10, top: 80),
        
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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
        
              Container(
                width: 310,
                child: DropdownButtonFormField<String>(
                    elevation: 15,
                    isDense: true,
                    isExpanded: true,
              
                    decoration:  InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                          fillColor: Color.fromARGB(51, 255, 255, 255),
                          // filled: false,
        
                             focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 213, 11, 11)),
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                              ),
        
                          border:  const UnderlineInputBorder(
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
              
                    items: _genderList
                        .map((gender) => DropdownMenuItem(
                              value: gender,
                              child: Row(
                                children: [
                                  // const Icon(
                                  //   Icons.circle,
                                  //   size: 13,
                                  //   color: Color.fromARGB(255, 129, 37, 152),
                                  // ).pOnly(left: 15, right: 15),
                                  Text(gender)
                                ],
                              ),
                            ))
                        .toList(),
                    // value: _selectedGender,
              
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
                onTap: () {
                print(_selectedRole);
                print(gender);
                print(name);
                print(mobileNum);
                print(emailId);
                print(address);
                print(city);
                print(zipCode);
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
                          "Submit",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color.fromARGB(255, 255, 255, 255)),
                        ).pOnly(right: 12, left: 20),
                        const Icon(
                          Icons.done_sharp, size: 24, weight: 80.0,
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
