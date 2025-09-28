import 'package:flutter/material.dart';
import 'package:olimpo/widgets/nav_bar.dart';

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
      body: Center(
        child: Image.asset(
          'lib/data/images/logo.png',
          width: 200,
          height: 200,
        ),
      ),
      bottomNavigationBar: NavBar(parentContext: context),
    );
  }
}