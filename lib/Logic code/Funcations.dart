// ignore_for_file: camel_case_types, no_leading_underscores_for_local_identifiers, avoid_print, void_checks, non_constant_identifier_names, avoid_function_literals_in_foreach_calls

import 'dart:html';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_project/Logic%20code/global_var.dart';
import 'package:flutter_project/main.dart';
import 'package:flutter_project/Admin Register/Reg_1.dart';
import 'Global_var.dart';

// ignore: unused_element
final _passwordController = TextEditingController();

class Defined_Funation { 
  final CollectionReference users = FirebaseFirestore.instance.collection('user');

  registeredAndSubmit(var email, var password, var context) async {

    String _email = email;
    var _password = password;

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


  Future  firebaseAuthentication(String email, String password, context) async {
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

  Future getUserList () async {
    List infoList = [];
    try {
      await users.get()
      .then((querySnapshot) {
        querySnapshot.docs.forEach((element) { infoList.add(element.data); });
      }
     ); return infoList;
     }  catch (error) {
      print (error.toString());
    }
    
    return;
  }
}