import 'package:storeapp/models/product_model.dart';
import 'package:storeapp/services/api_services.dart';

class AddProudct {
  Future<ProductModel> addProudct({
    required String title,
    required String price,
    required String description,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await ApiServices().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': description,
        'image': image,
        'category': category,
      },
    );

    return ProductModel.fromJson(data);
  }
}
