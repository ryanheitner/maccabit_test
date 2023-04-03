import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../injection_container.dart';
import '../../../product/product_item_view.dart';
import '../bloc/details_bloc.dart';
import '../bloc/details_event.dart';
import '../bloc/details_state.dart';

class DetailsPage extends ConsumerWidget {
  final List<ProductItemView> products;

  const DetailsPage({Key? key, required this.products}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BlocProvider(
      create: (_) =>
      ref.watch(detailsBlocProvider)
        ..add(DetailsSelectedEvent(products: products)),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Maccabi Test - Details'),
          actions: [
            BlocBuilder<DetailsBloc, DetailsState>(
              builder: (context, state) {
                return PopupMenuButton<DetailsSortOrder>(
                  icon: Icon(Icons.sort),
                  onSelected: (value) {
                    final bloc = BlocProvider.of<DetailsBloc>(context);
                    bloc.add(DetailsSortEvent(sortOrder: value));
                  },
                  itemBuilder: (BuildContext bc) {
                    return const [
                      PopupMenuItem(
                        child: Text("Price"),
                        value: DetailsSortOrder.price,
                      ),
                      PopupMenuItem(
                          child: Text("Rating"),
                          value: DetailsSortOrder.rating),
                      PopupMenuItem(
                        child: Text("Discount"),
                        value: DetailsSortOrder.discount,
                      )
                    ];
                  },
                );
              },
            ),
          ],
        ),
        body: BlocBuilder<DetailsBloc, DetailsState>(
          buildWhen: (previous, current) {
            return previous.products != current.products;
          },
          builder: (context, state) {
            return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (BuildContext context, int index) {
                  final product = state.products[index];
                  return ProductItem(product: product);
                });
          },
        ),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  final ProductItemView product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          title: Text(
            product.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text('price: ${product.price}, rating: ${product.rating}, discount: ${product.discount}'),
          trailing: Hero(
            tag: "Image_${product.thumbnail}",
            child: Image.network(
              product.thumbnail,
              width: 100,
              height: 100,
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) {
                return Text("Image");
              },
            ),
          )),
    );
  }
}
