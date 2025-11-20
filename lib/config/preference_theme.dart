import 'package:flutter/material.dart';

class PreferenceTheme {
  static ValueNotifier<Brightness> tema = ValueNotifier(Brightness.light);

  static void setTema(){
    tema.value = WidgetsBinding.instance.platformDispatcher.platformBrightness;
  }

  static void toggleTema(){
    tema.value = tema.value == Brightness.dark ? Brightness.light : Brightness.dark;
  }
}