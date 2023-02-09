import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tugas/go-router/cubits/login_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  context.go(context.namedLocation("home"));
                },
                child: const Text("Go to Home")),
            ElevatedButton(
                onPressed: () {
                  context.read<LoginCubit>().login();
                },
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
