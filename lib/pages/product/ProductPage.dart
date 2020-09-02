import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductPage extends  StatefulWidget{

  final Map<String, dynamic> params;
  ProductPage({Key key, this.params}):super();

  @override
  _ProductPage createState() {
    return _ProductPage();
  }

}

class _ProductPage extends State<ProductPage>{
  @override
  Widget build(BuildContext context) {
    print(widget.params);
    return Scaffold(
      appBar: AppBar(
        title: Text('商品页面'),
      ),
      body: Column(
        children: <Widget>[
          Text(
            '我的颜色是主题色',
            style: TextStyle(
              color: Theme.of(context).primaryColor
            ),
          )
        ]
      ),
    );
  }
  
}





