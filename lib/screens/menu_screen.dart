import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(//Appbar 
        title: Text(
          "Olimpo",
          style: TextStyle(color: Colors.white),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),

      drawer: Drawer(), //TODO: Elaborar Sidedrawer

      body: const Center(//Center Logo
        child: Text("TELA INICIAL")
      ), 

      bottomNavigationBar: BottomAppBar(//Bottom Navigation Bar
        color: Colors.blue,
        child: IconTheme(
          data: IconThemeData(color: Colors.white),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(icon: Icon(Icons.sports_mma), onPressed:() => print("Esportes Olímpicos aqui"), ),
              IconButton(icon: Icon(Icons.sports_gymnastics), onPressed:() => print("Atletas aqui"), ),
            ],
          ),
        ),
      ),
    );
  }
}