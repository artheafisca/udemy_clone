import 'package:flutter/material.dart';
import '../../go_router_material/products.dart';

class ItemDetailPage extends StatelessWidget {
  ItemDetailPage({super.key, required this.item});
  Product item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      // body: Center(
      //   child: Text("Item ID: ${item.id}"),
      // ),
    );
  }
}