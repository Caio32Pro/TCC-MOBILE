import 'package:flutter/material.dart';
import 'package:GymGuru/login.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';

class EsqueciSenha extends StatefulWidget {
  const EsqueciSenha({super.key});

  @override
  EsqueciSenhaState createState() => EsqueciSenhaState();
}

class EsqueciSenhaState extends State<EsqueciSenha> {
  final TextEditingController _emailController = TextEditingController();

  Future<void> sendEmail(String recipient) async {
    final Email email = Email(
      body: 'Olá,\n\nRecebemos uma solicitação para redefinir sua senha. Clique no link abaixo para criar uma nova senha:\n\n[INSIRA O LINK AQUI]\n\nSe você não solicitou a redefinição de senha, ignore este e-mail.\n\nAtenciosamente,\nEquipe GymGuru',
      subject: 'Redefinição de Senha - GymGuru',
      recipients: [recipient],
      isHTML: false,
    );

    try {
      await FlutterEmailSender.send(email);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Email enviado com sucesso!')),
      );
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao enviar o email: $error')),
      );
    }
  }

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
                      controller: _emailController,
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
                child: ElevatedButton(
                  onPressed: () {
                    final email = _emailController.text.trim();
                    if (email.isNotEmpty) {
                      sendEmail(email);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Por favor, insira um email válido.')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFc8c8c8),
                    padding: EdgeInsets.symmetric(horizontal: 40.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text('Enviar', style: TextStyle(color: Colors.black)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}