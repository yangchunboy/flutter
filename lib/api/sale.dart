
import 'package:app/utils/request.dart';

import 'package:app/model/sale/ShopListModel.dart';

class SaleHttp {

  Future<ShopListModel> getShopList({ String keyword = '', int refereeId, int page = 1 }) async{
    Map<String, dynamic> query = {
      "keyword": keyword,
      "refereeId": refereeId,
      "page": page
    };
    Map<String, dynamic> data = await Http.get('/api/sale/shopSearch', query);
    return ShopListModel.fromJson(data);
  }

}