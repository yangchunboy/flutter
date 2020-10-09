import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/provider/CountModel.dart';


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
      body: Row(
        children: [
          Text('当前点击的此时'),
          Consumer<CountModel>(
            builder: (context, counter, child) => Text(
              '${counter.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ),
          
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





