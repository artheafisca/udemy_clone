import 'dart:ui';

import 'package:flutter/material.dart';

class ShopListApp extends StatelessWidget {
  const ShopListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shop List App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Center(
            child: Container(
              color: Colors.green[300],
              width: 150,
              height: 40,
              child: Center(child: Text("Bakso Yoi"))),
          ),
          ),
        body: _ProductList(),
        
      ),
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
    Item(itemName: "Bakso Biasa", itemQty: 10),
    Item(itemName: "Bakso Urat", itemQty: 10),
    Item(itemName: "Bakso Mercon", itemQty: 10),
    Item(itemName: "Bakso Beranak", itemQty: 10),
    Item(itemName: "Bakso Telur", itemQty: 10),
    Item(itemName: "Bakso Keju", itemQty: 10),
  ]; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
      itemCount: itemData.length,
      itemBuilder: ((context, index) {
        return ListTile(
          title: Text("${itemData[index].itemName} x${itemData[index].itemQty}"),
          leading: CircleAvatar(
            backgroundColor: (itemData[index].itemQty != 0) ? Colors.green[400] : Colors.grey,
            radius: 25,
            child: Text(
              itemData[index].itemName[0],
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ),
          onTap: (itemData[index].itemQty != 0) ? () {
            setState(() {
              itemData[index].itemQty = itemData[index].itemQty - 1;
            });
          } 
          : null,
          trailing: IconButton(
            color: Colors.red,
            hoverColor: Colors.green[300],
            icon: Icon(Icons.delete),
            onPressed: () {
              setState(() {
                itemData.removeAt(index);
              });
            }, ),
        );
      })
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green[400],
        hoverColor: Colors.green[300],
        onPressed: () {
          showDialog(
            context: context, 
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Add Menu"),
                scrollable: true,
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Nama",
                            icon: Icon(Icons.add_shopping_cart_rounded)
                          ),
                          controller: addController,
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            labelText: "Quantity",
                            icon: Icon(Icons.add_box_rounded)
                          ),
                          controller: qtyController,
                        )
                      ])),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        itemData.add(Item(
                          itemName: addController.text, 
                          itemQty: int.parse(qtyController.text)
                        ));
                        addController.clear();
                        qtyController.clear();
                      });
                    }, 
                    child: Text("Add"))
                ],
              );
            }
          );
        },
        child: Icon(Icons.add),
      )
    );
  }
}
