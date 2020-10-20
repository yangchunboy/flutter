import 'package:flutter/material.dart';
import 'package:app/router/router.dart';
import 'package:app/theme/ColorTheme.dart';
import 'package:app/utils/utils.dart';


final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        theme: ColorTheme.light(),
        darkTheme: ColorTheme.dark(),
        navigatorKey: Utils.navigatorKey,
        onGenerateRoute: (settings) {
          return Router.onGenerateRoute(settings);
        });
  }
}
