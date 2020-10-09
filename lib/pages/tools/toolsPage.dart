import 'package:app/utils/utils.dart';
import 'package:flutter/material.dart';

class ToolsPage extends  StatefulWidget{

  final Map params;
  ToolsPage({this.params});

  @override
  _ToolsPage createState() {
    return _ToolsPage();
  }

}

class _ToolsPage extends State<ToolsPage>{
  // print(widget.params);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('工具类页面'),
      ),
      body: Column(
        children: <Widget>[
          Text('常用的一些公共组件'),
          InkWell(
            onTap: (){
              Utils.showConfirmDialog(context, '确定要删除吗？', (){});
            },
            child: Text('点击查看弹出的确认框'),
          )
        ]
      ),
    );
  }
  
}





