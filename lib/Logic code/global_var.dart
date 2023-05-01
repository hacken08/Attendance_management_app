import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'Funcations.dart';




String name = "";
String mobileNum = "";
String emailId = "";
String address = "";
String city = "";
String zipCode = "";

String selectRole = "Role";
int radio = 1;
String gender = "";
String userInfo = "";
List userDataList = Defined_Funation().getUserList() as List;

String passowrd = "";
String confirmPassword = "";

class Var extends StatelessWidget {
  const Var({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp ();
  }
}