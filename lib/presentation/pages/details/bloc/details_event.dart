import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../product/product_item_view.dart';


@immutable
abstract class DetailsEvent extends Equatable {
  @override
  List<Object> get props => [];
}
class DetailsSelectedEvent extends DetailsEvent {
  final List<ProductItemView> products;

  DetailsSelectedEvent({required this.products});
}

class DetailsSortEvent extends DetailsEvent {
  final DetailsSortOrder sortOrder;

  DetailsSortEvent({required this.sortOrder});
}

enum DetailsSortOrder { price, rating, discount }
