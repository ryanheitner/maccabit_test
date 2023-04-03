
import 'package:maccabi/domain/entities/product_entity.dart';

abstract class ProductRepository {
  Future<ProductEntityList> getProducts();
}