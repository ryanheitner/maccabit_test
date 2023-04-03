import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maccabi/presentation/product/products_view.dart';
part 'products_state.freezed.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState({
    @Default(true) bool isLoading,
    @Default(false) bool isError,
    @Default(false) bool isEmpty,
    @Default([]) List<ProductsView> productsView,
  }) = _ProductsState;
}
