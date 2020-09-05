import 'package:flutter/material.dart';
import 'package:tencent_im_plugin/tencent_im_plugin.dart';

class HomePage extends  StatefulWidget{

  // final Map params;
  HomePage();

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
      body: Column(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/product', arguments: { 'productId': '1111' });
            },
            child: Text('点击我跳转商品页面并携带参数'),
          )
        ],
      )
    );
  }
  
}





