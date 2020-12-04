import 'package:app/pages/tools/toolsPage.dart';
import 'package:flutter/material.dart';
import 'package:app/pages/home/HomePage.dart';
import 'package:app/pages/product/ProductPage.dart';
import 'package:app/pages/detail/DetailPage.dart';
import 'package:app/pages/providerDemo/ProviderDemo.dart';
import 'package:app/pages/login/loginPage.dart';


class Router {
  static Map routes = {
    '/': (params) => HomePage(),
    '/product': (params){ 
      // print(params);
      String productId = params['productId'];
      return ProductPage(productId: productId); 
    },
    '/detail': (params) => DetailPage(),
    '/tools': (params) => ToolsPage(),
    '/provider': (params) => ProviderDemoPage(),
    '/login': (params) => LoginPage()

  };

  static onGenerateRoute(RouteSettings settings) {
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
