# flutter脚手架
根据自己需求实现的一个flutter脚手架

##  开发准备

1. 开发工具推荐vscode
2. flutter版本：由于我搭建的时候是基于1.17.4，所以建议在这个版本下使用，有需要的可以自己升级flutter版本

## 代码规范

1. vscode插件不能出现任何红色的报错
2. 布局代码和逻辑分开，不要直接在布局代码写方法
3. 使用了两次或者以上的方法一定要封装

##  运行方法

按下面所示运行

```
flutter pub get // 先安装依赖
open -a Simulator // 打开iOS的模拟器
flutter run // 运行
```



## 目录结构介绍

```javascript
│
assets // 存放静态资源文件，图片固定json或者iconfont字体
├── images // 存放固定的图片
│   └── smile.png
└── json // 存放固定的json文件
│
lib // 存放项目的所有代码
│
├── App.dart  // 根widget
├── api // 存储所有的请求
│   └── sale.dart // 存储每个单独模块的请求以及将返回数据转换为model（此例子为销售模块的请求）
├── components  // 存储被多个页面共用的组件
│   ├── Dialog // 存放公共的dialog组件
│   │   └── ConfirmDialog.dart
│   └── Loading // 存放请求的展示的loading组件
│       └── Loading.dart
├── config // 存放一些固定的配置参数例如请求域名，支付宝appid等
│   └── ConfigData.dart
├── main.dart  // 入口文件
├── mixins // 放一些混入的类
├── model // 存储请求的返回结果的model
│   └── sale // 对应api文件夹下面的模块
│       └── ShopListModel.dart // 当前这个模块下的每个请求返回数据的model
├── pages // 存放单独页面,每个文件夹代表一个页面
│   ├── demo
│   │   └── DemoPage.dart
│   ├── home
│   │   └── HomePage.dart
│   ├── product
│       └── ProductPage.dart
├── provider // 存放provider的model
│   └── CountModel.dart
├── router // 所有路由定义的地方
│   └── router.dart
├── theme // 主题的定义
│   └── ColorTheme.dart
└── utils // 存放一些公共的函数
    ├── request // 公共的请求方法和拦截器
    │   ├── interceptors.dart
    │   └── request.dart
    └── utils.dart // 公共的方法
```

##  其他

1. 请求接口返回值生成model建议直接在这个网站上转换[https://app.quicktype.io/](https://app.quicktype.io/)(需要翻墙)



##  参考文献

- [flutter中文网](https://flutter.cn/)
- [dart核心api文档](https://api.dart.dev/stable/2.9.2/dart-core/dart-core-library.html)
- [provider](https://pub.flutter-io.cn/packages?q=provider)
- [flutter_screenutil](https://pub.flutter-io.cn/packages/flutter_screenutil)