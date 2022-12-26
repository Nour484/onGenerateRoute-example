import 'package:flutter/material.dart';
import '../Model/first_Model.dart';
import 'first_screen.dart';
import 'second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //* here i need to navigate to First screen  and pass data to it
          Center(
              child: TextButton(
            child: const Text("First Screen"),
            onPressed: () {
              Navigator.pushNamed(context, FirstScreen.routeName,
                  arguments: FirstModel(number: 1, name: "Nour", gpa: 3));
            },
          )),

          //* here i need to navigate to second screen
          Center(
              child: TextButton(
            child: const Text("SecondScreen"),
            onPressed: () {
              Navigator.pushNamed(
                context,
                SecondScreen.routeName,
              );
            },
          )),

          //* wrong route
          Center(
              child: TextButton(
            child: const Text("Not Found Screen "),
            onPressed: () {
              Navigator.pushNamed(context, "Not Correct Route",
                  arguments: FirstModel(number: 1, name: "Nour", gpa: 3));
            },
          )),
        ],
      ),
    );
  }
}
