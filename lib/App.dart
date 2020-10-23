import 'package:flutter/material.dart';
import 'package:app/router/router.dart';
import 'package:app/theme/ThemeStyle.dart';
import 'package:app/utils/utils.dart';
import 'package:app/provider/ThemeChangeModel.dart';
import 'package:provider/provider.dart';


final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();



class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: ThemeChangeModel())],
      child: Consumer<ThemeChangeModel>(builder: (context, theme, _) {
          return MaterialApp(
            initialRoute: '/',
            theme: switchTheme(theme),
            darkTheme: ThemeStyle.dark(),
            navigatorKey: Utils.navigatorKey,
            onGenerateRoute: (settings) {
              return Router.onGenerateRoute(settings);
            }
          );
        }
      )
    );
  }

  // 根据状态切换主题
  ThemeData switchTheme(ThemeChangeModel theme) {
    ThemeData themeData = ThemeStyle.light();
    switch(theme.theme) {
      case 1: themeData = ThemeStyle.light();break;
      default: themeData = ThemeStyle.dark();
    }
    return themeData;
  }

}
