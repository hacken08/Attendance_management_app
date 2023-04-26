// ignore_for_file: prefer_const_literals_to_create_immutables, unused_local_variable, sized_box_for_whitespace, non_constant_identifier_names, avoid_print

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:meta/dart2js.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart';
import 'SignUp1.dart';

String emailId = "";
String address = "";
String city = "";
String zipCode = "";

final signUp_key = GlobalKey<FormState>();

class SignUp_2 extends StatelessWidget {
  const SignUp_2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      // Designing Container
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
               InkWell(
                onTap: () {
                   Navigator.pushNamed(
                  context, Raste.signUp_1
                );
              },
                 child: Container(
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
                  padding: const EdgeInsets.only(left: 130, top: 70),
                  child: Transform(
                    transform: Matrix4.identity()..rotateZ(12.4),
                    child: Container(
                      width: 160,
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

            Row(
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
            ).pOnly(left: 20, bottom: 10, top: 80),

            Row(
              children: [
                const Text(
                      "Email ID, Address, City ",
                      style: TextStyle(
                        fontFamily: 'abel',
                        letterSpacing: 1,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(185, 172, 172, 172)),
                    ),
              ],
            ).pOnly(bottom: 55, left: 22),

            // Text Field: Address
            Form(
              key: signUp_key,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 60),
                    child: TextFormField(
                      cursorRadius: const Radius.circular(20),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                        fillColor: const Color.fromARGB(51, 224, 220, 220),
                        // filled: true,

                           focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: Color.fromARGB(255, 213, 11, 11)),
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                            ),


                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(  
                          color: Color.fromARGB(255, 0, 0, 0)),
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                           ),

                            focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.solid ,color: Color.fromARGB(2255, 0, 115, 255)),
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                            ),

                        // labelText: "Email",
                        label: Row(
                          children: [
                            const Text(
                              "Email ID",
                              style: TextStyle( 
                                fontFamily: 'abel',
                                  color: Color.fromARGB(255, 128, 128, 128),
                                  // letterSpacing: 1.3,
                                  // height: 1.8,
                                  fontSize: 15),
                            )
                          ],
                        ).pOnly(left: 20, bottom: 8),

                        prefixIcon: const GradientIcon(
                          Icons.email_rounded,
                          size: 32,
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 157, 206, 244),
                              Color.fromARGB(255, 0, 115, 255)
                            ],
                            begin: Alignment.bottomCenter,
                          ),  
                        ).pOnly(left: 15),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This cannot be empy";
                        }

                        return null;
                      },
                      onChanged: (value) {
                        emailId = value;
                      },
                    ),
                  ),

                  // Text Field: Addressr
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 60, top: 100),
                    child: TextFormField(

                      // keyboardType: TextInputType.number,
                      cursorRadius: const Radius.circular(20),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                        fillColor: const Color.fromARGB(51, 224, 220, 220),
                        // filled: true,

                           focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: Color.fromARGB(255, 213, 11, 11)),
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                            ),


                        border: const UnderlineInputBorder(
                          borderSide: BorderSide(  style: BorderStyle.solid
                          ,color: Color.fromARGB(255, 0, 0, 0)),
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                           ),
                           

                            focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(style: BorderStyle.solid ,color: Color.fromARGB(2255, 0, 115, 255)),
                            borderRadius: BorderRadius.all(Radius.circular(20.0))
                            ),

                        // labelText: "MObile Number",
                        label: Row(
                          children: [
                            const Text(
                              "Address",
                              style: TextStyle(
                                fontFamily: 'abel',
                                  color: Color.fromARGB(255, 128, 128, 128),
                                  letterSpacing: 1.3,
                                  // height: .8,
                                  fontSize: 15),
                            )
                          ],
                        ).pOnly(left: 20),

                        prefixIcon: const GradientIcon(
                          Icons.location_on,
                          size: 32,
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 157, 206, 244),
                              Color.fromARGB(255, 0, 115, 255)
                            ],
                            begin: Alignment.bottomCenter,
                          ),
                        ).pOnly(left: 15),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "This cannot be empy";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        address = value;
                      },
                    ),
                  ).pOnly(
                    bottom: 6,
                  ),
                ],
              ),
            ),

          // 
          Form(
            // key: signUp_key2,
            child: Row(
              children: [
                Container(width: 190.2,
                  child: TextFormField(
            
                        cursorRadius: const Radius.circular(20),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                          fillColor: const Color.fromARGB(51, 224, 220, 220),
                          // filled: true,
            
                             focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 213, 11, 11)),
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                              ),
            
            
                          border: const UnderlineInputBorder(
                            borderSide: BorderSide(  
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 0, 0, 0)),
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                             ),
            
                              focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.solid ,color: Color.fromARGB(2255, 0, 115, 255)),
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                              ),
            
                          // labelText: "MObile Number",
                          label: Row(
                          children: [
                            const Text(
                              "City",
                              style: TextStyle(
                                fontFamily: 'abel',
                                  color: Color.fromARGB(255, 128, 128, 128),
                                  letterSpacing: 1.3,
                                  // height: .8,
                                  fontSize: 15),
                            )
                          ],
                        ).pOnly(left: 15),

            
                          prefixIcon: const GradientIcon(
                            Icons.house_sharp,
                            size: 32,
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 157, 206, 244),
                                Color.fromARGB(255, 0, 115, 255)
                              ],
                              begin: Alignment.bottomCenter,
                            ),
                          ).pOnly(left: 5),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This cannot be empy";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          city = value;
                        },
                      ),
                ).pOnly(right: 25),
            
            
              Container(width: 170.2,
            
                 // labelText: "Zip Code",
                  child: TextFormField(
            
                        cursorRadius: const Radius.circular(20),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                          fillColor: const Color.fromARGB(51, 224, 220, 220),
                          // filled: true,
            
                             errorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 213, 11, 11)),
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                              ),
            
            
                          border: const OutlineInputBorder(
                            borderSide: BorderSide(  
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 0, 0, 0)),
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                             ),
            
                              focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.solid ,color: Color.fromARGB(2255, 0, 115, 255)),
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                              ),
            
                          label: Row(
                          children: [
                            const Text(
                              "Zip Code",
                              style: TextStyle(
                                fontFamily: 'abel',
                                  color: Color.fromARGB(255, 128, 128, 128),
                                  letterSpacing: 1.3,
                                  // height: .8,
                                  fontSize: 15),
                            )
                          ],
                        ).pOnly(left: 10),

            
                          prefixIcon: const GradientIcon(
                            Icons.email,
                            size: 32,
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 157, 206, 244),
                                Color.fromARGB(255, 0, 115, 255)
                              ],
                              begin: Alignment.bottomCenter,
                            ),
                          ).pOnly(left: 5),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "This cannot be empy";
                          }

                          if (value.length > 6) {
                            return "Zip code must have 6 digit";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          zipCode = value;
                        },
                      ),
                ),
              ]
            ).pOnly(left: 15, top: 40, bottom: 75),
          ),

            InkWell(
              onTap: () {
                if (signUp_key.currentState!.validate()) {
                  
              print(name);
              print(mobileNum);
              print(emailId);
              print(address);
              print(city);
              print(zipCode);
              }

              // else if (signUp_key2.currentState!.validate()){
              //     Navigator.pushNamed(context, Raste.signUp_1);
              // }
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
                      ).pOnly(right: 20, left: 20),
                      const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ],
                  )),
            ).pOnly(left: 210)
          ],
        ),
      ).pOnly(),
    );
  }
}
