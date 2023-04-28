// ignore_for_file: no_leading_underscores_for_local_identifiers, non_constant_identifier_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_project/main.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'Reg_1.dart';
import 'Reg_2.dart';
import 'Reg_3.dart';

class SignUp_4 extends StatefulWidget {
  SignUp_4({super.key});

  @override
  State<SignUp_4> createState() => _SignUp_4State();
}

class _SignUp_4State extends State<SignUp_4> {
  String passowrd = "";
  final _passwordController = TextEditingController();
  String confirmPassword = "";

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
                      Navigator.pushNamed(context, Raste.singUp_3);
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
                        color: Color.fromARGB(187, 0, 115, 255)),
                  ),
                ],
              ).pOnly(bottom: 10, top: 80),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Create Password ",
                    style: TextStyle(
                        fontFamily: 'abel',
                        letterSpacing: 1,
                        fontSize: 15,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(185, 172, 172, 172)),
                  ),
                ],
              ).pOnly(bottom: 100),
              TextFormField(
                // onChanged: (value) => passowrd = value,
                obscureText: true,

                controller: _passwordController,
                cursorRadius: const Radius.circular(20),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                  fillColor: const Color.fromARGB(51, 224, 220, 220),
                  // filled: true,

                  focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 235, 1, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),

                  border: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),

                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(2255, 0, 115, 255)),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),

                  // labelText: "Email",
                  label: Row(
                    children: const [
                      Text(
                        "Type Password",
                        style: TextStyle(
                            fontFamily: 'abel',
                            color: Color.fromARGB(255, 128, 128, 128),
                            // letterSpacing: 1.3,
                            // height: 1.8,
                            fontSize: 15),
                      )
                    ],
                  ).pOnly(left: 20),

                  prefixIcon: const GradientIcon(
                    Icons.lock_open,
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
              ).pOnly(left: 30, right: 40),
              TextFormField(
                obscureText: true,
                cursorRadius: const Radius.circular(20),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                  fillColor: const Color.fromARGB(51, 224, 220, 220),
                  // filled: true,

                  focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(255, 235, 1, 1)),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),

                  border: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),

                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                          style: BorderStyle.solid,
                          color: Color.fromARGB(2255, 0, 115, 255)),
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),

                  // labelText: "Password",
                  label: Row(
                    children: const [
                      Text(
                        "Confirm Password ",
                        style: TextStyle(
                            fontFamily: 'abel',
                            color: Color.fromARGB(255, 128, 128, 128),
                            // letterSpacing: 1.3,
                            // height: 1.8,
                            fontSize: 15),
                      )
                    ],
                  ).pOnly(left: 20),

                  prefixIcon: const GradientIcon(
                    Icons.lock_outline,
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
                onChanged: (value) => confirmPassword = value,
                validator: (value) => confirm_password(),
              ).pOnly(left: 30, right: 40, top: 60),
              InkWell(
                onTap: () => registeredAndSubmit(context),
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
                          Icons.done,
                          size: 24,
                          weight: 80.0,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ],
                    )),
              ).pOnly(top: 100)
            ],
          ),
        ),
      ),
    );
  }

  confirm_password() {
    var _password = _passwordController;

    // ignore: unrelated_type_equality_checks
    if (confirmPassword != _password) {
      return "Password Doesn't Match";
    }
    return;
  }

  submit() {
    CollectionReference location = FirebaseFirestore.instance.collection('Users');

    location.add({
      'name': name,
      'phone number': mobileNum,
      'email id': emailId,
      'address': address,
      'city': city,
      'zip code': zipCode,
      'gender': gender,
    });
  }

  registeredAndSubmit(BuildContext context) {
    submit();
    String _email = emailId;
    var _password = _passwordController;
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: _email,
      password: _password.text,
    )
        .then((value) {
      print("User Registered");
      Navigator.pushNamed(context, Raste.HomePage);
    }).onError((error, stackTrace) {
      setState(() {});
    });
  }
}
