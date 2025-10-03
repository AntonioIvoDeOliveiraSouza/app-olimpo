import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Olimpo';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            title: const Text(appTitle)
        ),
        body: const 
        Column(
            children: [
                    Text('Aplicação: Olimpo', style: TextStyle(color: Colors.black, fontSize: 24)),
                    Text('Membros do grupo: Antonio Ivo, Giovanna, Hyann Gabriel e Juliana', style: TextStyle(color: Colors.black, fontSize: 16)),
            ],
        ),
      ),
    );
  }
}
