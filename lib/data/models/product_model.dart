import 'package:json_annotation/json_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ProductModelList {
  final List<ProductModel> products;
  final int total;
  final int limit;
  final int skip;

  ProductModelList({
    required this.products,
    required this.total,
    required this.limit,
    required this.skip,
  });

  factory ProductModelList.fromJson(Map<String, dynamic> json) =>
      _$ProductModelListFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelListToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ProductModel {
  final int? id;
  final String? title;
  final String? description;
  final int? price;
  final double? discountPercentage;
  final double? rating;
  final int? stock;
  final String? brand;
  final String? category;
  final String? thumbnail;
  final List<String>? images;

  ProductModel({
    this.id,
    this.title,
    this.description,
    this.price,
    this.discountPercentage,
    this.rating,
    this.stock,
    this.brand,
    this.category,
    this.thumbnail,
    this.images,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}
