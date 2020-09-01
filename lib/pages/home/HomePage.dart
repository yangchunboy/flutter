import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends  StatefulWidget{

  Map params;
  HomePage({ this.params });

  @override
  _HomePageState createState() {
    return _HomePageState();
  }

}

class _HomePageState extends State<HomePage>{
  // print(widget.params);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('text'),
      ),
      body: Text('我是首页'),
    );
  }
  
}





