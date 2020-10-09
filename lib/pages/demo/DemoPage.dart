import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DemoPage extends  StatefulWidget{

  final Map params;
  DemoPage({this.params});

  @override
  _DemoPage createState() {
    return _DemoPage();
  }

}

class _DemoPage extends State<DemoPage>{
  // print(widget.params);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('标题'),
      ),
      body: Text('我是demo页'),
    );
  }
  
}





