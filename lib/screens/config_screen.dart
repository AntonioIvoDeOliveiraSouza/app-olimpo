import 'package:flutter/material.dart';
import 'package:olimpo/config/preference_theme.dart';

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
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Escolha a cor do tema", style: TextStyle(fontSize: 18),)
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: const Color.fromARGB(255, 167, 0, 0),),
            title: Text("Vermelho"),
            onTap: (){
              PreferenceTheme.changeColor(const Color.fromARGB(255, 167, 0, 0));
            },
          ),
          ListTile(
            leading:  CircleAvatar(backgroundColor: Colors.green[800],),
            title: Text("Verde"),
            onTap: (){
              PreferenceTheme.changeColor(Colors.green[800]!);
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue[900]),
            title: Text("Azul"),
            onTap: (){
              PreferenceTheme.changeColor(Colors.blue[900]!);
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.pink),
            title: Text("Rosa"),
            onTap: (){
              PreferenceTheme.changeColor(Colors.pink);
            },
          )
        ],
      )
    );
  }
}