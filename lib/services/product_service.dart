import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shamo_frontend/models/product_model.dart';

class ProductService {
  String baseUrl = 'shamo-backend.buildwithangga.id';

  Future<List<ProductModel>> getProducts() async {
    var url = Uri.https(baseUrl, 'api/products');
    var headers = {'Content-Type': 'application/json'};

    var response = await http.get(url, headers: headers);

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body)['data']['data'];
      List<ProductModel> products = [];

      for (var item in data) {
        products.add(ProductModel.fromJson(item));
      }

      return products;
    } else {
      throw Exception('Failed Get Products!');
    }
  }
}
