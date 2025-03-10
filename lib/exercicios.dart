import 'package:flutter/material.dart';

class Treino extends StatefulWidget {
  const Treino({super.key});

  @override
  State<Treino> createState() => _TreinoState();
}

class _TreinoState extends State<Treino> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E3E3E),
      appBar: AppBar(
        backgroundColor: Color(0xFF3E3E3E),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Treino'),
          ],
        ),
        )
    );
  }
}