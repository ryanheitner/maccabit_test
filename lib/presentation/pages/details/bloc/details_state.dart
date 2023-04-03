import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../product/product_item_view.dart';


part 'details_state.freezed.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState({
    @Default(true) bool isLoading,
    @Default([]) List<ProductItemView> products,
  }) = _DetailsState;
}
