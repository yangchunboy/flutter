
import 'package:app/utils/request.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

import 'package:app/model/sale/ShopListModel.dart';

class SaleHttp {

  Future<ShopListModel> getShopList({ String keyword = '', int refereeId, int page = 1 }) async{
    Map<String, dynamic> query = {
      "keyword": keyword,
      "refereeId": refereeId,
      "page": page
    };
    Response response = await http.get('/api/sale/shopSearch', queryParameters: query);
    Map<String, dynamic> data = json.decode(response.data.toString()) as Map<String, dynamic>;
    print(data);
    return ShopListModel.fromJson(data['data']);
  }

}