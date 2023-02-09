import 'package:flutter/cupertino.dart';

class Product {
  int id;
  String name;
  String category;

  Product({required this.id, required this.name, required this.category});

  static final List<Product> _products = [
    Product(id: 1, name: "basreng", category: "food"),
    Product(id: 2, name: "cimol", category: "food"),
    Product(id: 3, name: "cireng", category: "food"),
    Product(id: 4, name: "gamis", category: "clothes"),
    Product(id: 5, name: "peci", category: "clothes"),
    Product(id: 6, name: "beha", category: "clothes"),
  ];

  static List<Product> get getProducts {
    return _products;
  }

  static List<String> get getCategories {
    Set<String> result = Set<String>();
    List<Product> a = _products
        .where(
          (element) => result.add(element.category),
        )
        .toList();
    return result.toList();
  }

  static List<Product> getByCategory({String selectedCategory = ""}) {
    List<Product> result = _products
        .where((element) => element.category == selectedCategory)
        .toList();
    return result;
  }
}
