import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:app/api/sale.dart';
import 'package:app/model/sale/ShopListModel.dart';

class DetailPage extends  StatefulWidget{

  final Map params;
  DetailPage({this.params});

  @override
  _DetailPage createState() {
    return _DetailPage();
  }

}

class _DetailPage extends State<DetailPage>{

  ShopListModel shopListModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getShopList();
  }

  getShopList() async {
    print('1111111111');
    shopListModel =  await SaleHttp().getShopList(page: 1, refereeId: 11, keyword: '测试');
    setState(() {
      
    });
  }
  // print(widget.params);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('请求数据demo'),
      ),
      body: Column(
        children: getWidgetList()
      ),
    );
  }

  List<Widget> getWidgetList() {
    if (shopListModel == null) {
      return [];
    }
    return shopListModel.data.map((data) => Row(
      children: <Widget>[
        Text('真实姓名：'),
        Text(data.realName),
        Text('城市：'),
        Text(data.city)
      ],
    )).toList();
  }
  
}





