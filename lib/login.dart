import 'package:flutter/material.dart';
import 'package:GymGuru/cadastrar.dart';
import 'package:GymGuru/homepage.dart';
import 'package:GymGuru/esqueci.dart';

bool isHidden = true;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFF3E3E3E),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.1),
              Image.asset('assets/images/iconepng.png', width: screenWidth * 0.5),
              const SizedBox(height: 20),
              Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              SizedBox(
                width: screenWidth * 0.9,
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
              SizedBox(height: screenHeight * 0.05),
              SizedBox(
                width: screenWidth * 0.9,
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
                          borderSide: BorderSide(color: Colors.black, width: 1.0),
                        ),
                        hintText: 'Senha',
                        hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isHidden = !isHidden;
                            });
                          },
                          icon: Icon(
                            Icons.remove_red_eye,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                      obscureText: isHidden,
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    checkColor: const Color.fromARGB(255, 255, 255, 255),
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  SizedBox(height: 10),
                  Text('Remember me', style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))),
                  SizedBox(height: 50),
                ],
              ),
              SizedBox(
                width: screenWidth * 0.9,
                child: Column(
                  children: [
                    SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFF5500),
                        fixedSize: Size(screenWidth * 0.9, 55),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Text('Login', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.bold, fontSize: 15)),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EsqueciSenha()),
                  );
                },
                child: Text(
                  'Esqueci minha senha',
                  style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), decoration: TextDecoration.underline),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Cadastro()),
                  );
                },
                child: Text(
                  'Cadastrar',
                  style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255), decoration: TextDecoration.underline),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}