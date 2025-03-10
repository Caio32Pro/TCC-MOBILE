import 'package:flutter/material.dart';
import 'package:tcc_mobile/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GymGuru',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        fontFamily: 'BreeSerif', 
      ),
      home: Login(),
    );
  }
}