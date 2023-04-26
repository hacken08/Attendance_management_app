// ignore_for_file: unnecessary_const, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore, unused_local_variable

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/SignUp1.dart';
import 'package:flutter_project/SignUp_2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart';

void main() => runApp(const SignUp());

class Raste {
  static String signUp_1 = "/";
  static String signUp_2 = "/SingUp_2";
  static String singUp_3 = "/SingUp_3";
  static String home_Page = "/Home Page";
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
          // home: SignUp_2(),
          routes: {
            Raste.signUp_1: (context) => const SignUp_1(),
            Raste.signUp_2: (context) => const SignUp_2(),
          },
        ),
    );
  }
}
