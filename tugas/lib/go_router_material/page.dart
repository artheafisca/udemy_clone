import 'package:tugas/go_router_material/products.dart';
import 'package:tugas/go_router_material/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterApp extends StatelessWidget {
  const GoRouterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter().router,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              context.goNamed("home");
            },
            child: Text("Login")),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<String> categories = Product.getCategories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Category"),
        actions: [
          IconButton(
              onPressed: () {
                context.goNamed("about");
              },
              icon: Icon(Icons.info))
        ],
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(categories[index]),
            onTap: () {
              context.goNamed("product_list",
                  params: <String, String>{"category": categories[index]});
            },
          );
        },
      ),
    );
  }
}

class AboutApp extends StatelessWidget {
  const AboutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("About this app")),
      body: Center(
        child: Text("Created at 09/01/2023"),
      ),
    );
  }
}

class ProductListPage extends StatelessWidget {
  ProductListPage({super.key, required this.category});
  String category;
  late List<Product> productData =
      Product.getByCategory(selectedCategory: "$category");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: ListView.builder(
        itemCount: productData.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(productData[index].name),
            onTap: () {
              context.goNamed("item_detail", extra: productData[index]);
            },
          );
        },
      ),
    );
  }
}

class ItemDetailPage extends StatelessWidget {
  ItemDetailPage({super.key, required this.item});
  Product item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.name),
      ),
      body: Center(
        child: Text("Item ID: ${item.id}"),
      ),
    );
  }
}
