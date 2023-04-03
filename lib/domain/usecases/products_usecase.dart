
import '../entities/product_entity.dart';

abstract class ProductsUseCase {
  Future<ProductEntityList> getProducts();
}
