import 'package:storeapp/services/api_services.dart';

class CategoryApi {
  Future<List<dynamic>> getallcategorys() async {
    List<dynamic> data = await ApiServices().get(url: 'products/categories');
    return data;
  }
}
