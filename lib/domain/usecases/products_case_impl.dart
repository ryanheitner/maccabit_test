import 'package:maccabi/domain/usecases/products_usecase.dart';

import '../entities/product_entity.dart';
import '../repositories/product_repository.dart';

class ProductsUseCaseImpl implements ProductsUseCase {
  final ProductRepository repository;


  ProductsUseCaseImpl({
    required this.repository,

  });

  @override
  Future<ProductEntityList> getProducts() async {
    return repository.getProducts();
  }
}
