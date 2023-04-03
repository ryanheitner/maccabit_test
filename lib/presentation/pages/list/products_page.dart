import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maccabi/presentation/product/products_bloc.dart';
import 'package:maccabi/presentation/pages/list/list_item.dart';

import '../../../injection_container.dart';
import '../../product/products_event.dart';
import '../../product/products_state.dart';

class ProductsPage extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maccabi Test'),
      ),
      body: BlocProvider(
        create: (_) => ref.watch(productsBlocProvider)..add(GetProducts()),
        child: MyList(),
      ),
    );
  }
}

class MyList extends StatefulWidget {
  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsBloc, ProductsState>(
      builder: (context, state) {
        if (state.isError) {
          return Center(
            child: Text('Error'),
          );
        } else if (state.isLoading) {
          return Center(
            child: SizedBox(
              height: 100,
              width: 100,
              child: CircularProgressIndicator(
                strokeWidth: 5,
              ),
            ),
          );
        } else if (state.productsView.isEmpty) {
          return Center(
            child: Text('No data'),
          );
        }
        return Container(
          color: Colors.grey,
          child: ListView.builder(
            itemCount: state.productsView.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                  child: ListItem(
                      entity: state.productsView[index]));
            },
          ),
        );
      },
    );
  }
}
