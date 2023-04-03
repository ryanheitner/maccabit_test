import 'package:maccabi/data/data/source/product_api_client.dart';
import 'package:maccabi/data/models/product_model.dart';
import 'package:maccabi/data/models/product_transformer.dart';
import 'package:maccabi/domain/entities/product_entity.dart';
import 'package:maccabi/domain/repositories/product_repository.dart';

class ProductRepoImpl implements ProductRepository {
  final ProductApiClient client;

  ProductRepoImpl({required this.client});

  @override
  Future<ProductEntityList> getProducts() async {
    final model = await client.getProducts();
    return _parseProductModel(model);
  }

  static ProductEntityList _parseProductModel(ProductModelList model) {
    return ProductTransformer.transformProductModelList(model);
  }
}
