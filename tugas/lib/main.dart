import 'package:flutter/material.dart';
import 'package:tugas/go-router/config/app_router.dart';
// import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas/go-router/cubits/login_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Builder(builder: (context) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: "Go Router",
          routerConfig: AppRouter(context.read<LoginCubit>()).router,
        );
      }),
    );
  }
}