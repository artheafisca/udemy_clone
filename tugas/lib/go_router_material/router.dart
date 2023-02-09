import 'package:tugas/go_router_material/page.dart';
import 'package:tugas/go_router_material/products.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: <GoRoute>[
      //login,
      GoRoute(
        path: "/login",
        name: "login",
        builder: (context, state) {
          return LoginPage();
        },
      ),
      //home -> productList -> itemDetail,
      //     -> aboutApp
      GoRoute(
          path: "/",
          name: "home",
          builder: (context, state) {
            return HomePage();
          },
          routes: <GoRoute>[
            // productList -> itemDetail,
            GoRoute(
                path: "product_list/:category",
                name: "product_list",
                builder: (context, state) {
                  String selectedCategory = state.params["category"]!;
                  return ProductListPage(category: selectedCategory);
                },
                routes: <GoRoute>[]),

            // aboutApp
            GoRoute(
              path: "about",
              name: "about",
              builder: (context, state) {
                return AboutApp();
              },
            )
          ]),
      //itemdetail
      GoRoute(
        path: "/item_detail",
        name: "item_detail",
        builder: (context, state) {
          Product item = state.extra! as Product;
          return ItemDetailPage(item: item);
          // String item = state.params["cilor"]!;
          // return Container();
        },
      ),
    ],
    routerNeglect: true,
    initialLocation: "/login",
    redirect: (context, state) {
      // belum login maka alihkan ke login
    },
  );
}

// class AppRouter {
//   final GoRouter router = GoRouter(
//       debugLogDiagnostics: true,
//       routes: <GoRoute>[
//         GoRoute(
//             path: "/",
//             name: "home",
//             builder: (context, state) {
//               return HomePage();
//             },
//             routes: <GoRoute>[
//               GoRoute(
//                 path: "about",
//                 name: "about",
//                 builder: (context, state) {
//                   return AboutApp();
//                 },
//               ),
//               GoRoute(
//                 path: "product_list/:category",
//                 name: "product_list",
//                 builder: (context, state) {
//                   String selectedCategory = state.params["category"] ?? "";
//                   return ProductListPage(category: selectedCategory);
//                 },
//               )
//             ]),
//       ],
//       initialLocation: "/");
// }
