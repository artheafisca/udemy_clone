import 'package:flutter/material.dart';
import 'package:shop_list_app/material/shop_list_app.dart';

class App extends StatelessWidget {
  const App ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping List',
      home: ShopListApp(),
    );
  }
}

class ShopListApp extends StatefulWidget {
  // const ShopListApp({super.key});

  @override
  State<ShopListApp> createState() => _ShopListAppState();
}

class _ShopListAppState extends State<ShopListApp> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shopping List")),
      body: _ProductList(),
    );
  }
}

class Item {
  String itemName;
  int itemQty;
  Item({required this.itemName, required this.itemQty});
}

class _ProductList extends StatefulWidget {
  const _ProductList({super.key});

  @override
  State<_ProductList> createState() => __ProductListState();
}

class __ProductListState extends State<_ProductList> {
  final addController = TextEditingController();
  final qtyController = TextEditingController();

  List<Item> itemData = [
    Item(itemName: "Saos Tomat", itemQty: 2),
    Item(itemName: "Kecap", itemQty: 4),
  ]; 

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemData.length,
      itemBuilder: ((context, index) {
        return ListTile(
          title: Text("${itemData[index].itemName} x${itemData[index].itemQty}"),
          leading: CircleAvatar(
            backgroundColor: (itemData[index].itemQty != 0) ? Colors.amber : Colors.grey
          ),
          onTap: (itemData[index].itemQty != 0) ? () {
            setState(() {
              itemData[index].itemQty = itemData[index].itemQty - 1;
            });
          } 
          : null,
        );
      })
    );
    
  }
}