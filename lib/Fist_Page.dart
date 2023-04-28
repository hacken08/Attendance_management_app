// ignore_for_file: empty_constructor_bodies, sized_box_for_whitespace

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_project/main.dart';
import 'package:google_fonts/google_fonts.dart';


class First_page extends StatelessWidget {
  const First_page ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),

      // Designing Container
      body: SingleChildScrollView(
        child: Column(
          children: [
          

            Center(
              child: Padding(
                padding: const EdgeInsets.only(),
                child: Image.asset(
                  'assets/images/hello_bot2.jpg',
                  width: 230,
                  height: 230,
                ),
              ).pOnly(),
            ).pOnly(top: 100),

            Center(
              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "App ",
                    style: TextStyle(
                      fontSize: 33,fontFamily: 'abel',
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    "Name",
                    style: TextStyle(
                        fontSize: 33,
                        fontFamily: 'abel',
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(187, 0, 115, 255)),
                  ),
                ],
              ).pOnly(),
            ),

          Row(
            children: [
               Container(
                width: 140,
                 child: const Divider(
                    thickness: 0.9,
                    color: Color.fromARGB(255, 227, 227, 227),
                  ),
               ),
               const Text(
                      " Logins ",
                      style: TextStyle(
                        fontFamily: 'abel',
                        letterSpacing: 1,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: Color.fromARGB(185, 172, 172, 172)),
                    ).pOnly(bottom: 5),
              Container(
                width: 150,
                 child: const Divider(
                    thickness: 0.9,
                    color: Color.fromARGB(255, 227, 227, 227),
                  ),
               ),
            ],
          ).pOnly(top: 35, bottom: 30, left: 35),
           
            InkWell(
              onTap: () { 
                Navigator.pushNamed(context, Raste.signUp_1);
              },
              borderRadius: BorderRadius.circular(40),
              splashColor: const Color.fromARGB(255, 84, 162, 251),
              child: Ink(
                  width: 310,
                  height: 64,
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
                        end:  AlignmentDirectional.center,
                        begin: Alignment.bottomCenter,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Icon(
                        Icons.admin_panel_settings,
                        size: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ).pOnly(right: 30),
                      const Text(
                        "Admin Login",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ).pOnly(),
                    
                    ],
                  ).pOnly(right: 58)
                  ),
            ).pOnly(bottom: 15),

             InkWell(
              onTap: () => Navigator.pushNamed(context, Raste.institue_login),
              borderRadius: BorderRadius.circular(40),
              splashColor: const Color.fromARGB(255, 84, 162, 251),
              child: Ink(
                  width: 310,
                  height: 64,
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
                        end:  AlignmentDirectional.center,
                        begin: Alignment.bottomCenter,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Icon(
                        Icons.location_city,
                        size: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ).pOnly(right: 30),
                      const Text(
                        "Institute Login",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ).pOnly(),
                    
                    ],
                  ).pOnly(right: 20)
                  ),
            ).pOnly(bottom: 15),

             InkWell(
              onTap: () => Navigator.pushNamed(context, Raste.staff_loing),
              borderRadius: BorderRadius.circular(40),
              splashColor: const Color.fromARGB(255, 84, 162, 251),
              child: Ink(
                  width: 310,
                  height: 64,
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
                        end:  AlignmentDirectional.center,
                        begin: Alignment.bottomCenter,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Icon(
                        Icons.work,
                        size: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ).pOnly(right: 30),
                      const Text(
                        "Staff Login",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ).pOnly(),
                    
                    ],
                  ).pOnly(right: 65)
                  ),
            ).pOnly(bottom: 15),
             InkWell(
              onTap: () => Navigator.pushNamed(context, Raste.student_login),
              borderRadius: BorderRadius.circular(40),
              splashColor: const Color.fromARGB(255, 84, 162, 251),
              child: Ink(
                  width: 310,
                  height: 64,
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
                        end:  AlignmentDirectional.center,
                        begin: Alignment.bottomCenter,
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        const Icon(
                        Icons.bookmark,
                        size: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ).pOnly(right: 30),
                      const Text(
                        "Student Login",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 255, 255, 255)),
                      ).pOnly(),
                    
                    ],
                  ).pOnly(right: 50)
                  ),
            ).pOnly(bottom: 15),

            
          ],
        ).pOnly(bottom: 30),
      ),
    );
  }

}