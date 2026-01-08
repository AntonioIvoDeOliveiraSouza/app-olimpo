import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class ProfileController {
  static final ValueNotifier<File?> imageNotifier = ValueNotifier<File?>(null);
  static final ImagePicker _picker = ImagePicker();
  static const String _localFileName = "profile_picture.jpg";

  static Future<void> loadSavedImage() async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final savedImage = File('${directory.path}/$_localFileName');

      if (await savedImage.exists()) {
        imageNotifier.value = savedImage;
      }
    } catch (e) {
      debugPrint("Erro ao carregar imagem: $e");
    }
  }

  static Future<void> pickImage(ImageSource source) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: source,
        imageQuality: 50,
      );

      if (pickedFile != null) {
        await _saveImageLocally(File(pickedFile.path));
      }
    } catch (e) {
      debugPrint("Erro ao selecionar imagem: $e");
    }
  }

  static Future<void> _saveImageLocally(File temporaryImage) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final String newPath = path.join(directory.path, _localFileName);
      
      final File savedImage = await temporaryImage.copy(newPath);
      
      imageNotifier.value = savedImage;
    } catch (e) {
      debugPrint("Erro ao salvar imagem localmente: $e");
    }
  }
}