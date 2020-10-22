import 'package:flutter/material.dart';

showConfirmDialogFun(
    BuildContext context, String content, Function confirmCallback) {
  showDialog<void>(
    context: context,
    builder: (context) {
      return new AlertDialog(
        title: new Text("提示"),
        content: new Text(content),
        actions: <Widget>[
          new FlatButton(
            onPressed: () {
              confirmCallback();
              Navigator.of(context).pop(true);
            },
            child: new Text("确认"),
          ),
          new FlatButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: new Text("取消"),
          ),
        ],
      );
    }
  );
}
