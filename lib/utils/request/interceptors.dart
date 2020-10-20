part of request;

class CustomInterceptors extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) {
    // print("REQUEST[${options?.method}] => PATH: ${options?.path}");
    return super.onRequest(options);
  }
  @override
  Future onResponse(Response response) {
    try{
      Map<String, dynamic> responseData = jsonDecode(response.data.toString()) as Map<String, dynamic>;
      if (response.statusCode == 200) {
        if (responseData['code'] == 1000) {
          return super.onResponse(response);
        } 
        else if (responseData['code'] == 1002) {
          Utils.navigatorKey.currentState.pushNamedAndRemoveUntil('/login', (route) => route == null);
        }
        else {
          Utils.showToast(responseData['message'] as String);
          // throw(responseData['message']);
        }
      }
    } catch(error) {
      throw(error);
    }
    // print("RESPONSE[${response?.statusCode}] => PATH: ${response?.request?.path}");
  }
  @override
  Future onError(DioError err) {
    // print("ERROR[${err?.response?.statusCode}] => PATH: ${err?.request?.path}");
    return super.onError(err);
  }
}