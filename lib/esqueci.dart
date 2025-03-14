import 'package:flutter/material.dart';
import 'package:GymGuru/login.dart';

class EsqueciSenha extends StatelessWidget {
  const EsqueciSenha({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E3E3E),
      appBar: AppBar(
        backgroundColor: Color(0xFF3E3E3E),
      ),
      body: SingleChildScrollView(
        child: Center(
        child: Column(
          children: [
            Image.asset('assets/images/iconepng.png', width: 250),
            SizedBox(height: 20),
            Text(
              'Esqueci minha senha',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 90),

            Text(
              'Insira seu e-mail abaixo e\nenviaremos um link para\n        alterar sua senha',
              style: TextStyle(
                //fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 30),

            SizedBox(
              width: 350,
              child: Column(
                children: [
                  TextFormField(
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
                      hintText: 'Email',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 50),

            SizedBox(
              width: 350,
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));          
                    },
                    child: Text('Enviar', style: TextStyle(color: Colors.black),),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFc8c8c8),
                      padding: EdgeInsets.symmetric(horizontal: 40.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
        ),
    );
  }
}