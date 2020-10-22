import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/provider/CountModel.dart';
import 'package:app/provider/ThemeChangeModel.dart';


class ProviderDemoPage extends  StatefulWidget{

  final Map params;
  ProviderDemoPage({this.params});

  @override
  _ProviderDemoPage createState() {
    return _ProviderDemoPage();
  }

}

class _ProviderDemoPage extends State<ProviderDemoPage>{
  // print(widget.params);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('标题'),
      ),
      body: Column(
        children: [
          Text('当前点击的次数'),
          Consumer<CountModel>(
            builder: (context, counter, child) => Text(
              '${counter.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          InkWell(
            onTap: () {
              ThemeChangeModel themeChangeModel = context.read<ThemeChangeModel>();
              if (themeChangeModel.theme == 1) {
                themeChangeModel.changeTheme(2);
              } else {
                themeChangeModel.changeTheme(1);
              }
            },
            child: Text('点击切换主题'),
          ),
          Row(
            children: [
              Text('当前的主题模式是:'),
              Consumer<ThemeChangeModel>(builder: (context, theme, _) => Text(theme.themeText))
            ]
          )
        ]
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
          var counter = context.read<CountModel>();
          counter.plus();
        },
        tooltip: '点击新增',
        child: Icon(Icons.add),
      ),
    );
  }
  
}





