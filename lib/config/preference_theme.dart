import 'package:flutter/material.dart';

class PreferenceTheme {
  static ValueNotifier<Brightness> tema = ValueNotifier(Brightness.light);
  static ValueNotifier<Color> color = ValueNotifier(Colors.green[800]!);

  static void setTema(){
    tema.value = WidgetsBinding.instance.platformDispatcher.platformBrightness;
  }

  static void changeColor(Color newColor){
    color.value = newColor;
  }

  static void toggleTema(){
    tema.value = tema.value == Brightness.dark ? Brightness.light : Brightness.dark;
  }
}