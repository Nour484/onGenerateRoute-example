import 'package:animatedsplashscreen/Model/first_model.dart';
import 'package:animatedsplashscreen/screen/first_screen.dart';
import 'package:animatedsplashscreen/screen/second_screen.dart';
import 'package:flutter/material.dart';

import 'MyRoutes/on_generate_routes.dart';
import 'screen/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      onGenerateRoute: OnRoutes.onGenerateRoutesMethod,
      home: HomeScreen(),
    );
  }
}
