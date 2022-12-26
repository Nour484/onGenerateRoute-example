import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const String routeName = "SecondScreen";
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("SecondScreen")),
    );
  }
}
