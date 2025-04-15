import 'package:GymGuru/Usuario/secundario/ajuda.dart';
import 'package:GymGuru/Usuario/secundario/config.dart';
import 'package:GymGuru/Usuario/principal/homepage.dart';
import 'package:GymGuru/Usuario/principal/login.dart';
import 'package:GymGuru/Usuario/principal/perfil.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
//import 'package:carousel_slider/carousel_slider.dart';

class Treino extends StatefulWidget {
  const Treino({super.key});

  @override
  State<Treino> createState() => _TreinoState();
}

class _TreinoState extends State<Treino> {
  String selectedButton = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF3E3E3E),
      appBar: AppBar(
        backgroundColor: Color(0xFF3E3E3E),
        title: Text(
          'Treino Diário',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.0),
          child: Container(color: Color.fromARGB(255, 0, 0, 0), height: 1.0),
        ),
      ),

      drawer: Drawer(
        backgroundColor: Color(0xFF3E3E3E),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 65,
              child: DrawerHeader(
                decoration: BoxDecoration(color: Color(0xFF3E3E3E)),
                child: Text(
                  'GymGuru',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Configurações',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(Icons.settings, color: Colors.white),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Config()),
                );
              },
            ),
            ListTile(
              title: Text('Ajuda', style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.help, color: Colors.white),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Ajuda()),
                );
              },
            ),
            ListTile(
              title: Text('Sair', style: TextStyle(color: Colors.white)),
              leading: Icon(Icons.exit_to_app, color: Colors.white),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF3E3E3E),
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Treino()),
            );
          } else if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Homepage()),
            );
          } else if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Perfil()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Exercícios',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              //botões de seleção
              decoration: BoxDecoration(color: Color(0xFF2B2B2B)),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Button A
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      shape: BoxShape.rectangle,
                      color: Color(0xFF3E3E3E),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    width: 60,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = "A";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            selectedButton == "A"
                                ? Colors.deepOrange
                                : Color(0xFF3E3E3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        "A",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  // Button B
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      shape: BoxShape.rectangle,
                      color: Color(0xFF3E3E3E),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    width: 60,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = "B";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            selectedButton == "B"
                                ? Colors.deepOrange
                                : Color(0xFF3E3E3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        "B",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  // Button C
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      shape: BoxShape.rectangle,
                      color: Color(0xFF3E3E3E),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    width: 60,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = "C";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            selectedButton == "C"
                                ? Colors.deepOrange
                                : Color(0xFF3E3E3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        "C",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  // Button D
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: Offset(0, 3),
                        ),
                      ],
                      shape: BoxShape.rectangle,
                      color: Color(0xFF3E3E3E),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    width: 60,
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          selectedButton = "D";
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            selectedButton == "D"
                                ? Colors.deepOrange
                                : Color(0xFF3E3E3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        "D",
                        style: TextStyle(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ), //botões de seleção
            Divider(color: Colors.black, thickness: 0.0, height: 1),
            Container(
              decoration: BoxDecoration(color: Color(0xFF3E3E3E)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Progresso do treino:',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(height: 10),

                  // Progress bar
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      SizedBox(width: 10),
                        Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          LinearPercentIndicator(
                          alignment: MainAxisAlignment.center,
                          width: 250.0,
                          lineHeight: 5.0,
                          percent: 0.4,
                          backgroundColor: Colors.white,
                          progressColor: Colors.deepOrange,
                          ),
                          Positioned(
                          left: 250.0 * 0.4 - 20,
                          child: Text(
                            '40%',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                          ),
                        ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}