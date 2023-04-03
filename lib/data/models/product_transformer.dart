import 'package:maccabi/data/models/product_model.dart';
import 'package:maccabi/domain/entities/product_entity.dart';

class ProductTransformer {
  static ProductEntityList transformProductModelList(ProductModelList model) {
    return ProductEntityList(
        products: model.products.map((e) => _transformProductModel(e)).toList(),
        total: model.total,
        limit: model.limit,
        skip: model.skip);
  }

  static ProductEntity _transformProductModel(ProductModel model) {
    return ProductEntity(
      id: model.id ?? -999,
      title: model.title ?? '',
      description: '',
      price: model.price ?? 0,
      discountPercentage: model.discountPercentage ?? 0,
      rating: model.rating ?? 0,
      stock: model.stock ?? 0,
      brand: model.brand ?? '',
      category: model.category ?? '',
      thumbnail: model.thumbnail ?? '',
      images: model.images ?? [],
    );
  }
}
