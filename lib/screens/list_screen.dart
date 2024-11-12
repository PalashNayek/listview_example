// list_view_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../di/setup_locator.dart';
import '../view_models/item_view_model.dart';

class ListViewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<ItemViewModel>();

    return Scaffold(
      appBar: AppBar(title: Text('List of Items')),
      body: ChangeNotifierProvider<ItemViewModel>(
        create: (_) => viewModel,
        child: Consumer<ItemViewModel>(
          builder: (context, model, child) {
            return ListView.builder(
              itemCount: model.items.length,
              itemBuilder: (context, index) {
                final item = model.items[index];
                return ListTile(
                  title: Text(item.title),
                  subtitle: Text(item.description),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
