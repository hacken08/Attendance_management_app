// ignore_for_file: prefer_const_literals_to_create_immutables, unused_local_variable, avoid_types_as_parameter_names, avoid_print, sized_box_for_whitespace, camel_case_types, use_build_context_synchronously

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/main.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:gradient_ui_widgets/gradient_ui_widgets.dart';
import 'package:flutter_project/Logic code/global_var.dart';
import 'package:flutter_project/Logic code/Funcations.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignUp_1 extends StatefulWidget {
  const SignUp_1({super.key});

  @override
  State<SignUp_1> createState() => _SignUp_1State();
}

class _SignUp_1State extends State<SignUp_1> {
  final _roleList = ["Admin", "Institute", "Staff", "Teacher"];
  final _emailController = TextEditingController();
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
                    Navigator.pushNamed(context, Raste.firstPage);
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
                        ).pOnly(left: 5),
                      ],
                    ).pOnly(left: 1, bottom: 3),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 150, bottom: 20, top: 70),
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
                      fontSize: 33,
                      fontFamily: 'abel',
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
                  // Text Field: Mobile Number
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 40, top: 105),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      cursorRadius: const Radius.circular(20),
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 5.0),
                        fillColor: const Color.fromARGB(51, 175, 173, 173),

                        focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromARGB(255, 213, 11, 11)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),

                        border: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),

                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromARGB(2255, 0, 115, 255)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),

                        // labelText: "MObile Number",
                        label: Row(
                          children: [
                            const Text(
                              "Mobile Number",
                              style: TextStyle(
                                  fontFamily: 'abel',
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

                  TextFormField(
                    cursorRadius: const Radius.circular(20),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: const Color.fromARGB(51, 175, 173, 173),

                      focusedErrorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 213, 11, 11)),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),

                      border: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 0, 0, 0)),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),

                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(2255, 0, 115, 255)),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),

                      // labelText: "Name",
                      label: Row(
                        children: [
                          const Text(
                            "Name",
                            style: TextStyle(
                                fontFamily: 'abel',
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
                ],
              ),
            ).pOnly(bottom: 65),

            Form(
              // key: signUp_key,
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 40),
                    child: TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      cursorRadius: const Radius.circular(20),
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 5.0),
                        fillColor: const Color.fromARGB(51, 224, 220, 220),
                        // filled: true,

                        focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromARGB(255, 213, 11, 11)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),

                        border: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),

                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromARGB(2255, 0, 115, 255)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),

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
                    ),
                  ),

                  // Text Field: Addressr
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, right: 40, top: 100),
                    child: TextFormField(
                      // keyboardType: TextInputType.number,
                      cursorRadius: const Radius.circular(20),
                      decoration: InputDecoration(
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 5.0),
                        fillColor: const Color.fromARGB(51, 224, 220, 220),
                        // filled: true,

                        focusedErrorBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromARGB(255, 213, 11, 11)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),

                        border: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromARGB(255, 0, 0, 0)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),

                        focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(
                                style: BorderStyle.solid,
                                color: Color.fromARGB(2255, 0, 115, 255)),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),

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
              child: Row(children: [
                Container(
                  width: 200.2,
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),

                      border: const UnderlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 0, 0, 0)),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),

                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(2255, 0, 115, 255)),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),

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
                  ).pOnly(left: 25),
                ).pOnly(right: 20),
                Container(
                  width: 150.2,
                  // labelText: "Zip Code",
                  child: TextFormField(
                    keyboardAppearance: Brightness.dark,
                    keyboardType: TextInputType.number,
                    cursorRadius: const Radius.circular(20),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                      fillColor: const Color.fromARGB(51, 224, 220, 220),
                      // filled: true,

                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 213, 11, 11)),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),

                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 0, 0, 0)),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),

                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(2255, 0, 115, 255)),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),

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
              ]).pOnly(top: 40, bottom: 55),
            ),

            Container(
              width: 310,
              child: DropdownButtonFormField<String>(
                  elevation: 15,
                  isDense: true,
                  isExpanded: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(vertical: 5.0),
                    fillColor: const Color.fromARGB(51, 255, 255, 255),
                    // filled: false,

                    focusedErrorBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: Color.fromARGB(255, 213, 11, 11)),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),

                    border: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),

                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                            style: BorderStyle.solid,
                            color: Color.fromARGB(2255, 0, 115, 255)),
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),

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
                    ).pOnly(),

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
                      selectRole = genderList as String;
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
                      if (check == 2) {
                        radio = check as int;
                        gender = "Female";
                      }
                    });
                  },
                ).pOnly(right: 15),
                "Female".text.fontFamily('abel').size(15).make()
              ],
            ).pOnly(left: 40, bottom: 40),

            TextFormField(
              // onChanged: (value) => passowrd = value,
              obscureText: true,

              onChanged: (value) => passowrd = value,
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
                    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
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
                    borderSide: BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
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
            ).pOnly(left: 30, bottom: 60, right: 40, top: 60),

            InkWell(
              onTap: () => registering(_emailController.text, passowrd, context),
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
            ).pOnly(left: 210, bottom: 60)
          ],
        ),
      ),
    );
  }

  registering(var regEmail, var regPassword, context) async {

    emailId = _emailController.text;
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: regEmail,
        password: regPassword,
      );
      Navigator.pushNamed(context, Raste.HomePage);
    } on Exception catch (error) {
      print(error);
    } catch (error) {
      // executed for errors of all types other than Exception
    }
    
    submitData();
  }
  
  submitData() {
   final CollectionReference Users = FirebaseFirestore.instance.collection('user');

    Users.add({
      'name': name,
      'phone number': mobileNum,
      'email id': emailId,
      'address': address,
      'city': city,
      'zip code': zipCode,
      'gender': gender,
      'role': selectRole,
    });
  }
}
