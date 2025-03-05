import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:storeapp/constans/strings.dart';
import 'package:storeapp/models/product_model.dart';

class SearchedProductApi {
  Future<List<ProductModel>> getsearchedproudct({
    required String categoryname,
  }) async {
    http.Response response = await http.get(
      Uri.parse('${baseurl}products/category/$categoryname'),
    );
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> searchedProducts = [];
    for (var d = 0; d < data.length; d++) {
      searchedProducts.add(ProductModel.fromJson(d));
    }
    return searchedProducts;
  }
}
