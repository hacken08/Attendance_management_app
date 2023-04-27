// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unused_local_variable, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_project/Fist_Page.dart';
import 'package:flutter_project/Admin%20Login/Reg_1.dart';
import 'package:flutter_project/Admin%20Login/Reg_2.dart';
import 'package:flutter_project/Admin%20Login/Reg_3.dart';
import 'package:flutter_project/Institute_Login.dart';
import 'package:flutter_project/Staff_Login.dart';
import 'package:flutter_project/Student_Login.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:ui';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart';

void main() => runApp(const SignUp());

// final signUp_key = GlobalKey<FormState>();

class Raste {
  static String firstPage = "/";
  static String signUp_1 = "/singUp_1";
  static String signUp_2 = "/SingUp_2";
  static String singUp_3 = "/SingUp_3";
  static String institue_login = "/Institue Page";
  static String staff_loing = "/Staff Login";
  static String student_login = "/Login Student";
}

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark
      ),
        home: MaterialApp(
          home: First_page(),
          routes: {
            // Raste.firstPage: (context) => const First_page(),
            // Raste.signUp_1: (context) => const SignUp_1(),
            // Raste.signUp_2: (context) => const SignUp_2(),
            // Raste.singUp_3: (context) => SignUp_3(),
            // Raste.institue_login: (context) => Institute_login(),
            // Raste.staff_loing: (context) => Staff_Login(),
            // Raste.student_login: (context) => Student_Login(),
          },
        ),
    );
  }
}
