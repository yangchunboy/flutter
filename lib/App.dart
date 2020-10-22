import 'package:flutter/material.dart';
import 'package:app/router/router.dart';
import 'package:app/theme/ColorTheme.dart';
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
          ThemeData themeData = ColorTheme.light();
          switch(theme.theme) {
            case 1: themeData = ColorTheme.light();break;
            default: themeData = ColorTheme.dark();
          }
          return MaterialApp(
            initialRoute: '/',
            theme: themeData,
            darkTheme: ColorTheme.dark(),
            navigatorKey: Utils.navigatorKey,
            onGenerateRoute: (settings) {
              return Router.onGenerateRoute(settings);
            }
          );
        }
      )
    );
    
  }
}
