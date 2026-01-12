import 'package:flutter/material.dart';
import 'package:olimpo/config/preference_theme.dart';
import 'package:image_picker/image_picker.dart';
import 'package:olimpo/config/profile_controller.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({super.key});

  void _atualizarTema(BuildContext context, Color novaCor) {
    PreferenceTheme.changeColor(novaCor);
    Navigator.pushNamedAndRemoveUntil(context, '/splash', (route) => false);
  }

  void _showImageOptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Wrap(
            children: [
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text("Galeria"),
                onTap: () {
                  Navigator.pop(context); // Fecha o modal
                  ProfileController.pickImage(context, ImageSource.gallery);
                },
              ),
              ListTile(
                leading: const Icon(Icons.camera_alt),
                title: const Text("Câmera"),
                onTap: () {
                  Navigator.pop(context);
                  ProfileController.pickImage(context, ImageSource.camera);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Configurações",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Escolha a cor do tema", style: TextStyle(fontSize: 18)),
          ),
          ListTile(
            leading: const CircleAvatar(backgroundColor: Color.fromARGB(255, 167, 0, 0)),
            title: const Text("Vermelho"),
            onTap: () {
              _atualizarTema(context, const Color.fromARGB(255, 167, 0, 0));
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.green[800]),
            title: const Text("Verde"),
            onTap: () {
              _atualizarTema(context, Colors.green[800]!);
            },
          ),
          ListTile(
            leading: CircleAvatar(backgroundColor: Colors.blue[900]),
            title: const Text("Azul"),
            onTap: () {
              _atualizarTema(context, Colors.blue[900]!);
            },
          ),
          ListTile(
            leading: const CircleAvatar(backgroundColor: Colors.pink),
            title: const Text("Rosa"),
            onTap: () {
              _atualizarTema(context, Colors.pink);
            },
          ),

          const Divider(),

          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text("Perfil", style: TextStyle(fontSize: 18)),
          ),

          ListTile(
            leading: const Icon(Icons.person, size: 30),
            title: const Text("Alterar Foto de Perfil"),
            subtitle: const Text("Toque para escolher"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              _showImageOptions(context);
            },
          ),

        ],
      ),
    );
  }
}