library request;
import 'package:dio/dio.dart';
part './interceptors.dart';


class HttpRequest {
  static BaseOptions options = BaseOptions(
    baseUrl: '',
    connectTimeout: 30 * 60 * 1000,
    receiveTimeout: 30 * 60 * 1000,
  );

  static Dio getInstance() {
    Dio dio = Dio(options);
    dio.interceptors.add(CustomInterceptors());
    return dio;

  }
}


