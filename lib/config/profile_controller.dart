import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path/path.dart' as path;
import 'dart:io';

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

  static Future<void> pickImage(BuildContext context, ImageSource source) async {
    PermissionStatus status;

    if (source == ImageSource.camera){
      status = await Permission.camera.request();

      if (!status.isGranted){
        if (context.mounted){
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Permissão para acessar câmera negada"))
          );
        }
        return;
      }
    }else{
      if (Platform.isAndroid) {
         if (await Permission.photos.isGranted || await Permission.storage.isGranted) {
           status = PermissionStatus.granted;
         } else {
            Map<Permission, PermissionStatus> statuses = await [
              Permission.photos,
              Permission.storage,
            ].request();

            if (statuses[Permission.photos]!.isGranted || statuses[Permission.storage]!.isGranted) {
               status = PermissionStatus.granted;
            } else {
               status = PermissionStatus.denied;
            }
         }
      } else if (Platform.isIOS) {
        status = await Permission.photos.request();
      } else {
        status = PermissionStatus.denied;
      }

      if (!status.isGranted) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Permissão para acessar galeria negada.")),
          );
        }
        return;
      }
    }

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
      
      final File savedImage = File(newPath);

      await FileImage(savedImage).evict(); 
      await temporaryImage.copy(newPath);

      imageNotifier.value = null;
      imageNotifier.value = File(newPath);
    } catch (e) {
      debugPrint("Erro ao salvar imagem localmente: $e");
    }
  }
}