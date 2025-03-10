import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E3E3E),
      appBar: AppBar(
        backgroundColor: Color(0xFF3E3E3E),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF3E3E3E),
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Exercícios',
          ),
          /*BottomNavigationBarItem(
            icon: Icon(Icons.sports_gymnastics),
            label: 'Exercícios',
          ),*/
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/LOGO.jpg', width: 200),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}