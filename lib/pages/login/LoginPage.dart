import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends  StatefulWidget{

  final Map params;
  LoginPage({this.params});

  @override
  _LoginPage createState() {
    return _LoginPage();
  }

}

class _LoginPage extends State<LoginPage>{
  // print(widget.params);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('标题'),
      ),
      body: Text('我是登录页'),
    );
  }
  
}





