/// 存储一些基本的可配置信息，以及key和账号等信息

class ConfigData {

  // 判断当前是否是开发环境
  static const  bool debug = true;

  // 请求的路径
  static const String requestUrl = debug ? 'http://192.168.1.102:7001': 'http://192.168.0.102:7001';


  // 设计图的宽度用于初始化flutter_screenutil包
  static const int width = 750;

  // 设计图的高度用于初始化flutter_screenutil包
  static const int height = 1335;

}