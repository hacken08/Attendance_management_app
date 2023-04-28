import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage  extends StatelessWidget {
  const HomePage ({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child:  Text("Login Succesfful",
          style:  TextStyle(
            fontSize: 30,
            color: Colors.blueGrey
          ),
          ),
        ),
      ),
    );
  }
}