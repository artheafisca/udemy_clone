import 'package:flutter/material.dart';
import 'package:tugas/go-router/cubits/login_cubit.dart';
import 'package:tugas/go-router/models/category_model.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Category> categories = Category.categories;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Categories"),
        leading: Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.deepPurple],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
              // image: DecorationImage(
              //     image: AssetImage("images/pattern2.jpeg"),
              //     fit: BoxFit.none,
              //     repeat: ImageRepeat.repeat)
            ),
        ),
        // backgroundColor: const Color(0xFF000A1F),
        actions: [
          IconButton(
              onPressed: () {
                context.read<LoginCubit>().logout();
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          Category category = categories[index];
          return ListTile(
            title: Text(category.name),
            onTap: () {
              return context.go(context.namedLocation("product_list",
                  params: <String, String>{
                    "category": category.name
                  },
                  queryParams: <String, String>{
                    "sort": "desc",
                    "filter": "0"
                  }));
            },
          );
        },
      ),
    );
  }
}
