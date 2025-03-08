import 'package:flutter/material.dart';
import 'package:tcc_mobile/homepage.dart';

bool isHidden = true;

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E3E3E),
      body: Center(
        child: Column(

          children: [
            SizedBox(height: 150),
            Image.asset('assets/images/LOGO.jpg', width: 200),
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
              width: 400,
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
                      hintText: 'Nome',
                      hintStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 50),
            SizedBox(
              width: 400,
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
                Checkbox(value: false, onChanged: (value) {
                  if (value == true) {
                    Checkbox(value: true, onChanged: (value) {});
                  } //fazer depois
                }
                ),
                SizedBox(height: 10),
                Text('Remember me', style: TextStyle(color: Colors.black)), //fazer depois
                SizedBox(height: 50),
              ],
            ),

            SizedBox(
              width: 400,
              child: Column(
              children: [
                SizedBox(height: 50),
                ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: const Text('Login', style: TextStyle(color: Color(0xFF49454F),fontWeight: FontWeight.bold, fontSize: 15)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFc8c8c8), //cor do texto dos botões "Color(0xFFc8c8c8)"
                  fixedSize: Size(400, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
              ),
                  ),
                ],
            )
          ),

          SizedBox(height: 5),
          Text('Esqueci minha senha', style: TextStyle(color: Colors.black)),
          SizedBox(height: 5),
          Text('Cadastre-se', style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
