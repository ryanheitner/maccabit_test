import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';

@CopyWith()
class ProductEntityList {
  final List<ProductEntity> products;
  final int total;
  final int limit;
  final int skip;

  List<String> get categories {
    return products.map((e) => e.category).toSet().toList();
  }

  ProductEntityList({
    required this.products,
    required this.total,
    required this.limit,
    required this.skip,
  });
}

@CopyWith()
class ProductEntity extends Equatable {
  final int id;
  final String title;
  final String description;
  final int price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final String brand;
  final String category;
  final String thumbnail;
  final List<String> images;

  ProductEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  @override
  List<Object?> get props => [
        id,
        title,
        description,
        price,
        discountPercentage,
        rating,
        stock,
        brand,
        category,
        thumbnail,
        images
      ];
}
