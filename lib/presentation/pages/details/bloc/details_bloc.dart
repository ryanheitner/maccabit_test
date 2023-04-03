import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maccabi/presentation/product/product_item_view.dart';

import 'details_event.dart';
import 'details_state.dart';

class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  DetailsSortOrder currentSortOrder = DetailsSortOrder.price;

  DetailsBloc() : super(DetailsState()) {
    on<DetailsSortEvent>((event, emit) {
      if (currentSortOrder != event.sortOrder) {
        currentSortOrder = event.sortOrder;
        final sortedProducts = _sortProducts(
            products: state.products, sortOrder: event.sortOrder);
        emit.call(state.copyWith(products: sortedProducts));
      }
    });

    on<DetailsSelectedEvent>((event, emit) {
      final sortedProducts = _sortProducts(
          products: event.products, sortOrder: DetailsSortOrder.price);
      emit.call(state.copyWith(products: sortedProducts));
    });
  }

  List<ProductItemView> _sortProducts(
      {required List<ProductItemView> products,
      required DetailsSortOrder sortOrder}) {
    List<ProductItemView> temp = List.from(products);
    switch (sortOrder) {
      case DetailsSortOrder.price:
        return temp..sort((a, b) => a.price.compareTo(b.price));
      case DetailsSortOrder.rating:
        return temp..sort((a, b) => a.rating.compareTo(b.rating));
      case DetailsSortOrder.discount:
        return temp..sort((a, b) => b.discount.compareTo(a.discount));
    }
  }
}
