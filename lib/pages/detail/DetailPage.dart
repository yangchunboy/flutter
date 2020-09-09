import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailPage extends StatefulWidget {
  final Map params;
  DetailPage({this.params});

  @override
  _DetailPage createState() {
    return _DetailPage();
  }
}

class _DetailPage extends State<DetailPage> {
  List<Map> list = [
    {
      "attr_group_id": 1,
      "attr_group_name": "尺码",
      "attr_list": [
        {"attr_id": 1, "attr_name": "M", "pic_url": ""},
        {"attr_id": 2, "attr_name": "L", "pic_url": ""},
        {"attr_id": 3, "attr_name": "XL", "pic_url": ""}
      ]
    },
    {
      "attr_group_id": 2,
      "attr_group_name": "颜色",
      "attr_list": [
        {
          "attr_id": 4,
          "attr_name": "棕色",
          "pic_url":
              "http://gd1.alicdn.com/imgextra/i2/1730262078/O1CN01jJN0fo1RDla5BFcC0_!!1730262078.jpg"
        },
        {
          "attr_id": 5,
          "attr_name": "蓝色",
          "pic_url":
              "http://gd2.alicdn.com/imgextra/i2/1730262078/O1CN01UGbCqR1RDlZmiistO_!!1730262078.jpg"
        }
      ]
    }
  ];

  List<int> selectedSizeList = [];
  List<int> selectedColorList = [];
  // List<int> selectedList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('标题'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          ..._getCategory()
        ]
      ),
    );
  }

  // 设置选中的详情
  void selectItem(int itemId, int groupId) {
    if (groupId == 1) {
      setState(() {
        selectedSizeList = [itemId];
      });
    } else {
      setState(() {
        selectedColorList = [itemId];
      });
    }
  }

  // 判断选中的展示红色，没选中的展示红色
  Widget judgeColor(int groupId, int itemId, String name) {
    if ((groupId == 1 && selectedSizeList.contains(itemId)) || (groupId == 2 && selectedColorList.contains(itemId))) {
      return Text(
        name,
        style: TextStyle(
          color: Colors.red
        ),
      );
    }
    return Text(
      name,
      style: TextStyle(
        color: Colors.black
      ),
    );
  }

  // 生成类目下的子节点
  List<Widget> _getChildItem(List<Map<String, dynamic>> arr, int groupId) {
    List<Widget> children = [];
    arr.forEach((element) {
      children.add(
        Padding(
          padding: EdgeInsets.all(10),
          child: InkWell(
            onTap: () {
              selectItem(element['attr_id'], groupId);
            },
            child: judgeColor(groupId, element['attr_id'], element['attr_name'])
          )
        )
      );
    });
    return children;
  }

  // 生成类目
  List<Widget> _getCategory() {
    List<Widget> children = [];
    list.forEach((element) {
      children.add(Text(element['attr_group_name']));
      children.add(
        Row(
          children: _getChildItem(element['attr_list'], element['attr_group_id'])
        )
      );
    });
    return children;
  }

}
