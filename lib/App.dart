import 'package:flutter/material.dart';
import 'package:app/router/router.dart';
import 'package:app/theme/ColorTheme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      theme: ColorTheme.dark(),
      onGenerateRoute: (settings) {
        return Router.onGenerateRoute(settings);
      });
  }
}
