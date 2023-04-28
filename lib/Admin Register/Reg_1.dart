// ignore_for_file: prefer_const_literals_to_create_immutables, unused_local_variable, avoid_types_as_parameter_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart';

String name = "";
String mobileNum = "";

class SignUp_1 extends StatefulWidget {
  const SignUp_1({super.key});

  @override
  State<SignUp_1> createState() => _SignUp_1State();
}

class _SignUp_1State extends State<SignUp_1> {
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
                onTap: () { Navigator.pushNamed(context, Raste.firstPage); },
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
                  padding: const EdgeInsets.only(left: 150,bottom: 20, top: 70),
                  child: Transform(
                    transform: Matrix4.identity()..rotateZ(12.4),
                    child: Container(
                      width: 140,
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

            Center(
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Image.asset(
                  'assets/images/admin.png',
                  width: 120,
                  height: 120,
                ),
              ).pOnly(),
            ).pOnly(bottom: 65),
            Center(
              child: Row(
                children: const [
                  Text(
                    "Admin ",
                    style: TextStyle(
                      fontSize: 33,fontFamily: 'abel',
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 33,
                        fontFamily: 'abel',
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(187, 0, 115, 255)),
                  ),
                ],
              ).pOnly(left: 80, bottom: 60),
            ),

            // Text Field: Name
            Form(
              // key: signUp_key,
              child: Stack(
                children: [
                  TextFormField(
                    cursorRadius: const Radius.circular(20),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: const Color.fromARGB(51, 175, 173, 173),
                      


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

                      // labelText: "Name",
                      label: Row(
                        children: [
                          const Text(
                            "Name",
                            style: TextStyle(fontFamily: 'abel',
                                color: Color.fromARGB(255, 128, 128, 128),
                                letterSpacing: 1.3,
                                height: 1.8,
                                fontSize: 15),
                          )
                        ],
                      ).pOnly(left: 20, bottom: 8),

                      prefixIcon: const GradientIcon(
                        Icons.person,
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
                      name = value;
                    },
                  ).pOnly(left: 20, right: 40),

                  // Text Field: Mobile Number
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 40, top: 105),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      cursorRadius: const Radius.circular(20),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                        fillColor: const Color.fromARGB(51, 175, 173, 173),

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
                              "Mobile Number",
                              style: TextStyle( fontFamily: 'abel',
                                  color: Color.fromARGB(255, 128, 128, 128),
                                  letterSpacing: 1.3,
                                  height: 1.8,
                                  fontSize: 15),
                            )
                          ],
                        ).pOnly(left: 20, bottom: 8),

                        prefixIcon: const GradientIcon(
                          Icons.phone_iphone,
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
                        } else if (value.length > 10 ||
                            value.length < 10 ||
                            value.isLetter()) {
                          return "Enter valid mobile number";
                        }
                        return null;
                      },
                      onChanged: (num) {
                        mobileNum = num;
                      },
                    ),
                  ).pOnly(
                    bottom: 5,
                  ),
                ],
              ),
            ).pOnly(bottom: 65),

            InkWell(
              onTap: () => Navigator.pushNamed(context, Raste.signUp_2),
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
      ),
    );
  }
}
