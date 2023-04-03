import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:maccabi/presentation/pages/list/products_page.dart';

import 'presentation/bloc/SimpleBlocObserver.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  // await sl.init();

  runApp(
    ProviderScope(
      child: App(
        key: UniqueKey(),
      ),
    ),
  );
}

class App extends StatelessWidget {
  App({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maccabi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue.shade800,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.blue.shade600),
      ),
      home: ProductsPage(),
    );
  }
}
