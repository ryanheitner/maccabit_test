import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maccabi/data/data/source/product_api_client.dart';
import 'package:maccabi/data/repositories/product_repository_impl.dart';
import 'package:maccabi/presentation/pages/details/bloc/details_bloc.dart';
import 'package:maccabi/presentation/product/products_bloc.dart';

import 'domain/repositories/product_repository.dart';
import 'domain/usecases/products_case_impl.dart';
import 'domain/usecases/products_usecase.dart';

final dioProvider = Provider((ref) => Dio());

final clientProvider = Provider<ProductApiClient>((ref) {
  final api = ref.read(dioProvider);
  return ProductApiClientImpl(httpClient: api);
});

final repoProvider = Provider<ProductRepository>((ref) {
  ref.onDispose(() {
    print("ProductRepository:onDispose");
  });
  final client = ref.read(clientProvider);
  return ProductRepoImpl(client: client);
});


final productsUseCaseProvider = Provider<ProductsUseCase>((ref) {
  return ProductsUseCaseImpl(
    repository: ref.watch(repoProvider),
  );
});





final productsBlocProvider = Provider<ProductsBloc>((ref) {
  final ProductsUseCase useCase = ref.read(productsUseCaseProvider);
  return ProductsBloc(productsUseCase: useCase);
});


final detailsBlocProvider = Provider<DetailsBloc>((ref) {
  return DetailsBloc();
});