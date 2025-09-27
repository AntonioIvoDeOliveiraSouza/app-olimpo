import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Olimpo",
          style: TextStyle(color: Colors.white),
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),

      drawer: Drawer(), //TODO: Elaborar Sidedrawer

      body: const Center(
        child: Text("TELA INICIAL")
      ), 

    );
  }
}