import 'package:flutter/material.dart';

class ThemeStyle {
  static const Color primary = Colors.white;
  static const Color dark_primary = Colors.red;

  static ThemeData light() {
    return ThemeData(
      primaryColor: primary,
      // textTheme: 
      // dialogBackgroundColor: dark_primary
      // accentColor: primary
    );
  }

  static ThemeData dark() {
    return ThemeData(
      primaryColor: dark_primary,
      accentColor: dark_primary
    );
  }


}