import 'package:dio/dio.dart';

import '../../models/product_model.dart';

abstract class ProductApiClient {
  Future<ProductModelList> getProducts();
}

class ProductApiClientImpl implements ProductApiClient {
  static const baseUrl = 'https://dummyjson.com';
  final Dio httpClient;

  ProductApiClientImpl({
    required this.httpClient,
  });


  @override
  Future<ProductModelList> getProducts({int limit = 100}) async {
    final url = '$baseUrl/products?limit=$limit';
    Response response = await this.httpClient.get(url);
    if (response.statusCode != 200) {
      throw Exception('error getting products');
    }

    return ProductModelList.fromJson(response.data);
  }
}
