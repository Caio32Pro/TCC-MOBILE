import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {  
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
      final screenWidth = MediaQuery.of(context).size.width;
      final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFF3E3E3E),
      appBar: AppBar(
        backgroundColor: Color(0xFF3E3E3E),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
                'Cadastro',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            SizedBox(height: 20),
            SizedBox(
              width: screenWidth * 0.9,
              child: Column(
                children: [
                  TextFormField(
                    controller: nomeController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                        fillColor: Color(0xFFc8c8c8),
                        filled: true,
                        contentPadding: EdgeInsets.symmetric(horizontal: 40.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 1.0,
                          ),
                        ),
                      hintText: 'insira seu nome:',
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            TextFormField(
              controller: emailController,
            )
          ],
        ),
      ),
    );
  }
}