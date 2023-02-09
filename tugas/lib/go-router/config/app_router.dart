// import 'package:flutter/cupertino.dart';
import 'dart:async';

import 'package:go_router/go_router.dart';
import 'package:tugas/go-router/cubits/login_cubit.dart';
import 'package:tugas/go-router/screens/category_screen.dart';
import 'package:tugas/go-router/screens/login_screen.dart';
import 'package:tugas/go-router/screens/product_list_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  final LoginCubit loginCubit;
  AppRouter(this.loginCubit);

  late final GoRouter router = GoRouter(
    debugLogDiagnostics: true,
    routes: <GoRoute>[
      GoRoute(
        path: "/login",
        name: "login",
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: "/",
        name: "home",
        builder: (BuildContext context, GoRouterState state) {
          return const CategoryScreen();
        },
        routes: [
          GoRoute(
            path: "product_list/:category",
            name: "product_list",
            builder: (BuildContext context, GoRouterState state) {
              return ProductListScreen(
                category: state.params['category']!,
                asc: state.queryParams['sort'] == 'asc',
                quantity: int.parse(state.queryParams['filter'] ?? '0'),
              );
            },
          ),
        ],
      ),
      // GoRoute(
      //   path: "/product_list",
      //   builder: (BuildContext context, GoRouterState state) {
      //     return const ProductListScreen();
      //   },
      // ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      final bool loggedIn = loginCubit.state.status == AuthStatus.authenticated;
      final bool loggingIn = state.subloc == "/login";

      if (!loggedIn) {
        return loggingIn ? null : "/login";
      }

      if (loggingIn) {
        return "/";
      }

      return null;
    },
    refreshListenable: GoRouteRefreshStream(loginCubit.stream)
  );
}

class GoRouteRefreshStream extends ChangeNotifier {
  GoRouteRefreshStream(Stream<dynamic> stream) {
    notifyListeners();
    _subscription = stream.asBroadcastStream().listen(
      (dynamic) => notifyListeners(),
    );
  }

  late final StreamSubscription<dynamic> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
