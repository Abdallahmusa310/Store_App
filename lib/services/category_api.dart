import 'dart:convert';
import 'package:storeapp/constans/strings.dart';
import 'package:http/http.dart' as http;

class CategoryApi {
  Future<List<dynamic>> getallcategorys() async {
    http.Response response = await http.get(
      Uri.parse('${baseurl}products/categories'),
    );
    List<dynamic> data = jsonDecode(response.body);
    return data;
  }
}
