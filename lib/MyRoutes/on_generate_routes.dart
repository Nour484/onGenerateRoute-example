import 'package:flutter/material.dart';

import '../Model/first_model.dart';
import '../screen/error_scree.dart';
import '../screen/first_screen.dart';
import '../screen/second_screen.dart';

class OnRoutes {
  static Route<dynamic> onGenerateRoutesMethod(settings) {
    switch (settings.name) {
      case FirstScreen.routeName:
        {
          return MaterialPageRoute(builder: (context) {
            final arg = settings.arguments as FirstModel;
            return FirstScreen(
              name: arg.name,
              gpa: arg.gpa,
              number: arg.number,
            );
          });
        }

      case SecondScreen.routeName:
        {
          return MaterialPageRoute(builder: (context) {
            return const SecondScreen();
          });
        }
      default:
        return MaterialPageRoute(builder: (context) {
          return const ErrorScreen();
        });
    }
  }
}
