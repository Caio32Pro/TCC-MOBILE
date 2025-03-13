import 'package:flutter/material.dart';
import 'package:tcc_mobile/cadastrar.dart';
import 'package:tcc_mobile/homepage.dart';
import 'package:tcc_mobile/esqueci.dart'; // Add this import

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
    return Scaffold(
      backgroundColor: Color(0xFF3E3E3E),
      body: SingleChildScrollView(
        child: Center(
        child: Column(

          children: [
            SizedBox(height: 100),
            Image.asset('assets/images/iconepng.png', width: 200),
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
                    // Add this line to obscure the text
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
                Text('Remember me', style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255))), //fazer depois
                SizedBox(height: 50),
              ],
            ),

            SizedBox(
              width: 350,
              child: Column(
              children: [
                SizedBox(height: 50),
                ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: const Text('Login', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold, fontSize: 15)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFFF5500), //cor do texto dos botões "Color(0xFFc8c8c8)"
                  fixedSize: Size(400, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
              ),
                  ),
                ],
            )
          ),
          
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EsqueciSenha()), // Navigator.push pra esqueci a senha
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
            child:
            Text(
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

      