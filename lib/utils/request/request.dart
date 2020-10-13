
part of request;

class HttpRequest {
  static BaseOptions options = BaseOptions(
    baseUrl: ConfigData.requestUrl,
    connectTimeout: 30 * 60 * 1000,
    receiveTimeout: 30 * 60 * 1000,
    contentType: ContentType.json.toString(),
    responseType: ResponseType.json,
  );

  static Dio getInstance() {
    Dio dio = Dio(options);
    dio.interceptors.add(CustomInterceptors());
    return dio;
  }
}


