import 'package:GymGuru/ajuda.dart';
import 'package:GymGuru/config.dart';
import 'package:GymGuru/homepage.dart';
import 'package:GymGuru/login.dart';
import 'package:GymGuru/perfil.dart';
import 'package:flutter/material.dart';
//import 'package:carousel_slider/carousel_slider.dart';


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
        title: Text(
          'Treino Diário',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        bottom: PreferredSize(
        preferredSize: Size.fromHeight(4.0),
        child: Container(
          color: Color.fromARGB(255, 0, 0, 0),
          height: 1.0,
        ),
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
              decoration: BoxDecoration(
                color: Color(0xFF3E3E3E),
              ),
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
              
              title: Text('Configurações', style: TextStyle(color: Colors.white),),
              leading: Icon(
                Icons.settings, 
                color: Colors.white,
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Config()));
              },
            ),
            ListTile(
              title: Text('Ajuda', style: TextStyle(color: Colors.white),),
              leading: Icon(
                Icons.help,
                color: Colors.white,
                ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Ajuda()));
              },
            ),
            ListTile(
              title: Text('Sair', style: TextStyle(color: Colors.white),),
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.white,
                ),
              onTap: () { 
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF3E3E3E),
        currentIndex: 0,
        onTap: (index){
          if(index == 0){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Treino()));
          }else if(index == 1){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
          }
          else if(index == 2){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Perfil()));
          }

        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center),
            label: 'Exercícios',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,),
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
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF2B2B2B),
                
              ),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
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
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF3E3E3E),
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
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF3E3E3E),
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
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF3E3E3E),
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
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF3E3E3E),
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
              
            //continuar aqui
            )
          ],
        ),
        )
    );
  }
}