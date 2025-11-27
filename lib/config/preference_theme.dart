import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceTheme {
  static const String _keyIsDark = 'is_dark';
  static const String _keyColor = 'theme_color';
  static ValueNotifier<Brightness> tema = ValueNotifier(Brightness.light);
  static ValueNotifier<Color> color = ValueNotifier(Colors.green[800]!);

  static Future<void> loadTheme() async{
    //Dark-Light Mode
    final prefs = await SharedPreferences.getInstance();

    final bool? isDarkStored = prefs.getBool(_keyIsDark);
    if(isDarkStored!= null){
      tema.value = isDarkStored? Brightness.dark:Brightness.light ;
    } else {
      tema.value = WidgetsBinding.instance.platformDispatcher.platformBrightness;
    }

    //Color theme
    final int? colorValue = prefs.getInt(_keyColor);
    if(colorValue != null){
      color.value = Color(colorValue);
    }
  }

  static void setTema(){
    tema.value = WidgetsBinding.instance.platformDispatcher.platformBrightness;
  }

  static void changeColor(Color newColor) async {
    color.value = newColor;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_keyColor, newColor.value);
  }

  static void toggleTema() async {
    tema.value = tema.value == Brightness.dark ? Brightness.light : Brightness.dark;

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyIsDark, tema.value == Brightness.dark);
  }
}