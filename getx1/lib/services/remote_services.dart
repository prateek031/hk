// ignore_for_file: non_constant_identifier_names

import 'package:http/http.dart' as http;
import 'package:getx1/models/product.dart';

class RemoteServices {
  static var client = http.Client();
  static Future <List<Product>?> fetchProduct() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
    if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      return null;
    }
  }
}
