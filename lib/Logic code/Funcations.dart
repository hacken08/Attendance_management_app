// ignore_for_file: camel_case_types, no_leading_underscores_for_local_identifiers, avoid_print, void_checks

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter_project/Admin Register/Reg_1.dart';
import 'Global_var.dart';

final _passwordController = TextEditingController();

class Defined_Funation extends StatelessWidget {
  const Defined_Funation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  registeredAndSubmit(var email, var password, var context) async {
    submitData();
    String _email = email;
    var _password = passowrd;

  try  { 
   await FirebaseAuth.instance
        .createUserWithEmailAndPassword(
      email: _email,
      password: _password,
    ); Navigator.pushNamed(context, Raste.HomePage);
  } on Exception catch (error) {
      print(error);
    } catch (error) {
      // executed for errors of all types other than Exception
    }
  }


  firebaseAuthentication(String email, String password, context) async {
    var _email = email;
    var _password = password;

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _email,
        password: _password,
      );
      Navigator.pushNamed(context, Raste.HomePage);
    } on Exception catch (error) {
      print(error);
    } catch (error) {
      // executed for errors of all types other than Exception
    }
  }

  
  submitData() {
    CollectionReference location = FirebaseFirestore.instance.collection('Users');

    location.add({
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