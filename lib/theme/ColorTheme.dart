import 'package:flutter/material.dart';

class ColorTheme {
  static const Color primary = Colors.white;
  static const Color dark_primary = Colors.red;

  static ThemeData light() {
    return ThemeData(
      primaryColor: primary
    );
  }

  static ThemeData dark() {
    return ThemeData(
      primaryColor: dark_primary
    );
  }


}