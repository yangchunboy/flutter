import 'package:flutter/material.dart';

class CountModel extends ChangeNotifier {

    int count=0;
    CountModel();
    void plus() {
    /// 在数据变动的时候通知监听者刷新UI
      count = count + 1;
      notifyListeners();
    }
}