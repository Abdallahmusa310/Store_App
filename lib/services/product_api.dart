import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:storeapp/constans/strings.dart';
import 'package:storeapp/models/product_model.dart';

class ProudctApi {
  Future<List<ProductModel>> getallproudcts() async {
    http.Response response = await http.get(Uri.parse('${baseurl}products'));
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> proudctlist = [];
    for (var i = 0; i < data.length; i++) {
      proudctlist.add(ProductModel.fromJson(data[i]));
    }
    return proudctlist;
  }
}
