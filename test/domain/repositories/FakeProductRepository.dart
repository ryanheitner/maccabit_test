import 'package:maccabi/domain/entities/product_entity.dart';
import 'package:maccabi/domain/repositories/product_repository.dart';

import '../entities/entity_stubs.dart';

class FakeProductsRepository implements ProductRepository {
  @override
  Future<ProductEntityList> getProducts() async {
    return ProductEntityList(
        products: productEntityStub.products,
        total: productEntityStub.total,
        limit: productEntityStub.limit,
        skip: productEntityStub.skip);
  }
}
