// services/user_storage.dart
import 'package:shared_preferences/shared_preferences.dart';
import '../models/user_model.dart';
import 'dart:convert';

class UserStorage {
  static const String _keyUser = 'current_user';
  
  // Salvar usuário
  static Future<void> saveUser(UserModel user) async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = jsonEncode({
      'name': user.nome,
      'email': user.email,
      'password': user.senha,
    });
    await prefs.setString(_keyUser, userJson);
  }
  
  // Carregar usuário
  static Future<UserModel?> loadUser() async {
    final prefs = await SharedPreferences.getInstance();
    final userJson = prefs.getString(_keyUser);
    
    if (userJson == null) return null;
    
    try {
      final userMap = jsonDecode(userJson);
      return UserModel(
        nome: userMap['name'],
        email: userMap['email'],
        senha: userMap['password'],
      );
    } catch (e) {
      return null;
    }
  }
  
  // Remover usuário (logout)
  static Future<void> removeUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_keyUser);
  }
  
  // Verificar se existe usuário salvo
  static Future<bool> hasUser() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(_keyUser);
  }
}