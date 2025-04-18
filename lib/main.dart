import 'package:GymGuru/Usuario/principal/exercicios.dart';
import 'package:flutter/material.dart';
import 'package:GymGuru/geral/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GymGuru',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black, secondary: Colors.black, primary: Colors.black),
        fontFamily: 'BreeSerif', 
      ),
      home: Treino(),
    );
  }
}