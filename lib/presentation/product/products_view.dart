import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maccabi/presentation/product/product_item_view.dart';



part 'products_view.freezed.dart';

@freezed
class ProductsView with _$ProductsView {
  const factory ProductsView({
    @Default("") name,
    @Default("") thumbnail,
    @Default(0) totalCount,
    @Default(0) totalStock,
    @Default([]) List<ProductItemView> productItemView,
  }) = _ProductsView;
}
