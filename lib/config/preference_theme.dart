import 'package:flutter/material.dart';

class PreferenceTheme {
  static ValueNotifier<Brightness> tema = ValueNotifier(Brightness.light);
  static ValueNotifier<MaterialColor> color = ValueNotifier(Colors.green);

  static void setTema(){
    tema.value = WidgetsBinding.instance.platformDispatcher.platformBrightness;
  }

  static void changeColor(MaterialColor newColor){
    color.value = newColor;
  }

  static void toggleTema(){
    tema.value = tema.value == Brightness.dark ? Brightness.light : Brightness.dark;
  }
}