import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:app/components/Loading/Loading.dart';
import 'package:app/components/Dialog/ConfirmDialog.dart';



class Utils {

  static GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();

  // 设置本地存储
  static void setStorage(String key, String value) async{
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.setString(key, value);
  }

  // 获取本地存储
  static Future getStorage(String key) async{
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    return _prefs.getString(key);
  }

  // 移除本地存储
  static void removeStorage(String key) async{
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    await _prefs.remove(key);
  }

  // 展示toast提示
  static void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0
    );
  }

  static void showLoading(BuildContext context, [String text]) {
    showLoadingFun(context, text);
  }

  static void showConfirmDialog(BuildContext context,String content, Function confirmCallback) {
    showConfirmDialogFun(context, content, confirmCallback);
  } 
}