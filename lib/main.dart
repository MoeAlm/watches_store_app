import 'package:flutter/material.dart';
import 'package:watchs_store_app/screens/products_screen.dart';
import 'package:watchs_store_app/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Watchs Store',
      home: MyProductsScreen(),
    );
  }
}
