import 'package:flutter/material.dart';
import 'package:app/pages/home/HomePage.dart';
import 'package:app/pages/product/ProductPage.dart';


class Router {
  static Map routes = {
    '/': (params) => HomePage(),
    '/product': (params) => ProductPage(params: params)
  };

  static onGenerateRoute(settings) {
          // If you push the PassArguments route
    if (routes[settings.name] != null) {
      // Cast the arguments to the correct type: ScreenArguments.
      final params = settings.arguments as Map<String, dynamic>;
      // print(params);

      // Then, extract the required data from the arguments and
      // pass the data to the correct screen.
      return MaterialPageRoute(
        builder: (context) {
          return routes[settings.name](params);
        },
      );
    }
  }
}
