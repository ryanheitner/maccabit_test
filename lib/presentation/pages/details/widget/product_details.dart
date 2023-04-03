import 'package:flutter/material.dart';
import 'package:maccabi/domain/entities/product_entity.dart';
import 'package:maccabi/presentation/pages/details/widget/details_widgets.dart';

class ProductDetails extends StatelessWidget {
  final ProductEntity entity;

  const ProductDetails({Key? key, required this.entity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16.0, top: 8.0),
                child: Text(
                  "${entity.title}",
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  style: TextStyle(
                      color: Colors.blue,
                      backgroundColor: Colors.red,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Center(child: Hero(tag: "Image_${entity.id}", child: Image.network(entity.images.first))),
            Padding(
              padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
              child: Text(
                "price: ${entity.price}",
                textAlign: TextAlign.start,
                style: Theme.of(context).textTheme.detailsTitle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
