import 'package:flutter/material.dart';



class ThemeChangeModel extends ChangeNotifier{
  int theme = 1;
  String themeText = '明亮模式';

  void changeTheme(int themeName) {
    if (themeName != theme) {
      switch(themeName) {
        case 1: theme = themeName; themeText = '明亮模式'; break;
        default: theme = themeName; themeText = '黑暗模式';
      }
      notifyListeners();
    }
  }

}