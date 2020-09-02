import 'package:flutter/material.dart';
import 'package:app/router/router.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        onGenerateRoute: (settings) {
          return Router.onGenerateRoute(settings);
        });
  }
}
