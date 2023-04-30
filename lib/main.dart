// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unused_local_variable, non_constant_identifier_names, unnecessary_import, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_project/Admin%20Register/Reg_1.dart';
import 'package:flutter_project/Fist_Page.dart';
import 'package:flutter_project/HomePage.dart';
import 'package:flutter_project/Login%20Screen/Admin_login.dart';
import 'Login Screen/Institute_Login.dart';
import 'Login Screen/Staff_Login.dart';
import 'Login Screen/Student_Login.dart';
// ignore: depend_on_referenced_packages
import 'package:firebase_core/firebase_core.dart';
import 'dart:ui';
import 'package:firebase_auth/firebase_auth.dart';

Future main() async {

 WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
//   options: FirebaseOptions(
//   apiKey: "AIzaSyBtgyZ2x7dPoYDNDBnGAIAvpZXDkdNvhcg",
//   authDomain: "attendance-management-ap-209dd.firebaseapp.com",
//   projectId: "attendance-management-ap-209dd",
//   storageBucket: "attendance-management-ap-209dd.appspot.com",
//   messagingSenderId: "452327529203",
//   appId: "1:452327529203:web:6bb2d97d5b98ed94fb7586",
//   measurementId: "G-P2B9YRYKFG"
//   )
//  );

 runApp(Attednace_Management_App());

}

// final signUp_key = GlobalKey<FormState>();

class Raste {
  static String firstPage = "/";
  static String signUp_1 = "/singUp_1";
  static String signUp_4 = "/singUp_4";
  static String institue_login = "/Institue Page";
  static String staff_loing = "/Staff Login";
  static String student_login = "/Login Student";
  static String HomePage = "/Home Page";
  static String admin_login = "/Admin login";
}

// ignore: camel_case_types
class Attednace_Management_App  extends StatelessWidget {
   Attednace_Management_App ({super.key});
  final signUp_key = GlobalKey <FormState> ();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark
      ),

        home: MaterialApp(
          // home: First_page(),
          routes: {
            Raste.firstPage: (context) => First_page(),
            Raste.signUp_1: (context) =>  SignUp_1(),
            // Raste.signUp_4: (Context) => SignUp_4(),
            Raste.institue_login: (context) => Institute_login(),
            Raste.staff_loing: (context) => Staff_Login(),
            Raste.student_login: (context) => Student_Login(),
            Raste.HomePage: (context) => HomePage(),
            Raste.admin_login: (context) => Admin_login(),
          },
        ),
    );
  }
}

  