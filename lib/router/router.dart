import 'package:flutter/material.dart';
import 'package:app/pages/home/HomePage.dart';

class Router {
  static Map routes = {
    '/': (context, params) => HomePage(),
  };

  static onGenerateRoute(settings) {
    if (routes[settings.name]) {
      // Cast the arguments to the correct type: ScreenArguments.

      // Then, extract the required data from the arguments and
      // pass the data to the correct screen.
      return MaterialPageRoute(
        builder: (context) {
          return routes[settings.name](context, settings.arguments);
        },
      );
    }
  }
}
