import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/api_services.dart';

class ProudctApi {
  Future<List<ProductModel>> getallproudcts() async {
    List<dynamic> data = await ApiServices().get(url: 'products');
    List<ProductModel> proudctlist = [];
    for (var i = 0; i < data.length; i++) {
      proudctlist.add(ProductModel.fromJson(data[i]));
    }
    return proudctlist;
  }
}
