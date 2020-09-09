import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:app/router/router.dart';
import 'package:app/theme/ColorTheme.dart';
import 'package:app/config/ConfigData.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        theme: ColorTheme.light(),
        darkTheme: ColorTheme.dark(),
        onGenerateRoute: (settings) {
          return Router.onGenerateRoute(settings);
        });
  }
}
