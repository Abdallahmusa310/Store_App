import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/api_services.dart';

class SearchedProductApi {
  Future<List<ProductModel>> getsearchedproudct({
    required String categoryname,
  }) async {
    List<dynamic> data = await ApiServices().get(
      url: 'products/category/$categoryname',
    );
    List<ProductModel> searchedProducts = [];
    for (var d = 0; d < data.length; d++) {
      searchedProducts.add(ProductModel.fromJson(d));
    }
    return searchedProducts;
  }
}
