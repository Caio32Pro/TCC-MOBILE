import 'package:GymGuru/classes/usuario.dart';
import 'package:flutter/material.dart';
import 'package:GymGuru/principal/cadastrar.dart';
import 'package:GymGuru/principal/homepage.dart';
import 'package:GymGuru/secundario/esqueci.dart';

bool isHidden = true;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  GlobalKey<FormState> login = GlobalKey<FormState>(); // Chave global para o Form
  bool _isChecked = false;
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  List<Usuario> loginFake = [
    Usuario(nome: 'Caio', email: 'caio32823@gmail.com', senha: 'Caca28081.')
  ];

  void verificaLogin(){
  loginFake.forEach(action) {
    if (action.getEmail == emailController.text && action.getSenha == nomeController.text) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Email ou senha incorretos!'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

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
              SizedBox(height: 20),
              Text(
                'Login',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 15),
              Form(
                key: login, // Associa a chave ao Form
                child: Column(
                  children: [
                    SizedBox(
                      width: screenWidth * 0.9,
                      child: TextFormField(
                        controller: nomeController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFc8c8c8),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 40.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Color.fromARGB(255, 0, 0, 0),
                              width: 1.0,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(
                              color: Color(0xFFFF5500),
                              width: 1.0,
                            ),
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'O email não pode ser vazio';
                          } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Insira um email válido';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.05),
                    SizedBox(
                      width: screenWidth * 0.9,
                      child: TextFormField(
                        controller: emailController,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFc8c8c8),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 40.0),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Colors.black, width: 1.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide(color: Color(0xFFFF5500), width: 1.0),
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
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'A senha não pode ser vazia';
                          } else if (value.length < 6) {
                            return 'A senha deve ter pelo menos 6 caracteres';
                          }
                          return null;
                        },
                      ),
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
                child: ElevatedButton(
                  onPressed: () {
                    if (login.currentState!.validate()) {
                      String email = emailController.text;
                      String nome = nomeController.text;
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFFF5500),
                    fixedSize: Size(screenWidth * 0.9, 55),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
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