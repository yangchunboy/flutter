import 'package:flutter/material.dart';
import 'package:app/router/router.dart';
import 'package:app/theme/ColorTheme.dart';
import 'package:app/config/ConfigData.dart';
import 'package:tencent_im_plugin/enums/log_print_level.dart';
import 'package:tencent_im_plugin/tencent_im_plugin.dart';

class App extends StatefulWidget {
  @override
  _App createState() {
    return _App();
  }
}

class _App extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> initTencentIm() async {
    final String userId = '1';
    // 初始化腾讯im
    await TencentImPlugin.init(
        appid: ConfigData.imAppid, logPrintLevel: LogPrintLevel.error);
    // 初始化本地存储
    TencentImPlugin.initStorage(identifier: userId);
    // 登录腾讯云账号
    await TencentImPlugin.login(
        identifier: userId,
        userSig:
            'eJyrVgrxCdYrSy1SslIy0jNQ0gHzM1NS80oy0zLBwoZQweKU7MSCgswUJStDEwMDEwMzCwsDiExJZm4qUNTU0tLI3NzM3BIimlpRkFkEFDc2M4CqK85MB5oXaO7jk5QXHJQWVV6WpJ8RkZIXkqed5hWYGVXgk5ORqe1dGVXgneUSHprraatUCwB4Ji*h');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        theme: ColorTheme.dark(),
        onGenerateRoute: (settings) {
          return Router.onGenerateRoute(settings);
        });
  }
}
