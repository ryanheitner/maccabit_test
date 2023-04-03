import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maccabi/domain/entities/product_entity.dart';
import 'package:maccabi/presentation/product/product_item_view.dart';
import 'package:maccabi/presentation/product/products_event.dart';
import 'package:maccabi/presentation/product/products_state.dart';
import 'package:maccabi/presentation/product/products_view.dart';

import '../../domain/usecases/products_usecase.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  final ProductsUseCase productsUseCase;

  ProductsBloc({required this.productsUseCase}) : super(ProductsState()) {
    on<GetProducts>((event, emit) async {
      emit.call(state.copyWith(isLoading: true));
      try {
        final ProductEntityList productList =
            await productsUseCase.getProducts();
        final List<ProductsView> categories =
            productList.categories.map((category) {
          String? thumbnail;
          int count = 0;
          int totalStock = 0;
          List<ProductItemView> productItemView = [];
          for (var product in productList.products) {
            if (product.category == category) {
              if (thumbnail == null) {
                thumbnail = product.thumbnail;
              }
              count++;
              totalStock += product.stock;
              final productItem = ProductItemView(
                name: product.title,
                thumbnail: product.thumbnail,
                price: product.price,
                rating: product.rating,
                discount: product.discountPercentage,
              );
              productItemView.add(productItem);
            }
          }

          return ProductsView(
            name: category,
            thumbnail: thumbnail,
            totalCount: count,
            totalStock: totalStock,
            productItemView: productItemView,
          );
        }).toList();
        emit(state.copyWith(
          productsView: categories,
          isLoading: false,
          isError: false,
        ));
      } catch (e) {
        emit(state.copyWith(productsView: [], isLoading: false, isError: true));
      }
    });
  }
}
