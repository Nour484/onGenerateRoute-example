import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  int number;
  String name;
  double gpa;
  FirstScreen(
      {super.key, required this.number, required this.name, required this.gpa});
  static const String routeName = "FirstScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
              "My Name is $name ,  gpa is :$gpa and   number is :$number ")),
    );
  }
}
