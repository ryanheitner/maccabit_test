import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_item_view.freezed.dart';

@freezed
class ProductItemView with _$ProductItemView {
  const factory ProductItemView({
    @Default("") name,
    @Default("") thumbnail,
    @Default(0.0) price,
    @Default(0.0) rating,
    @Default(0.0) discount,
  }) = _ProductItemView;
}
