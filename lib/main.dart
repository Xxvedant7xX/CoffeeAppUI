// ignore_for_file: prefer_const_constructors

import 'package:coffeeappui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
       brightness: Brightness.dark,
      //  colorScheme: ColorScheme.dark(
      //  primary: Colors.orange,
      //  secondary: Colors.orangeAccent,
      //  ),
      ),
    );
  }
}