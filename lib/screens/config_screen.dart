import 'package:flutter/material.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Configurações",
          style: TextStyle(color: Colors.white)
        ),
      ),
      body: Center(
        child: Text("Configurações bla bla bla"),
      ),
    );
  }
}