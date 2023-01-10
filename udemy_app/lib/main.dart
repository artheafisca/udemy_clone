import 'package:flutter/material.dart';
import 'package:udemy_app/screens/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Udemy Clone',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplahScreen(),
    );
  }
}


