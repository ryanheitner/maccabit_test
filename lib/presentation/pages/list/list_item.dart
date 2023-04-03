import 'package:flutter/material.dart';
import 'package:maccabi/presentation/pages/details/widget/details_page.dart';

import '../../product/products_view.dart';

class ListItem extends StatelessWidget {
  final ProductsView entity;

  const ListItem({Key? key, required this.entity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(
          '${entity.name}',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        isThreeLine: true,
        subtitle:
            Text('count: ${entity.totalCount}, stock: ${entity.totalStock}'),
        trailing: Hero(
          tag: "Image_${entity.thumbnail}",
          child: Image.network(
            entity.thumbnail,
            width: 100,
            height: 100,
            fit: BoxFit.fill,
            errorBuilder: (context, error, stackTrace) {
              return Text("Image");
            },
          ),
        ),
        dense: false,
        onTap: () {
          final products = entity.productItemView;
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(
                products: products,
              ),
            ),
          );
        },
      ),
    );
  }
}
