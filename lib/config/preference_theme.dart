import 'package:flutter/material.dart';

class PreferenceTheme {
  static ValueNotifier<Brightness> tema = ValueNotifier(Brightness.light);

  static setTema(){
    tema.value = WidgetsBinding.instance.platformDispatcher.platformBrightness;
  }
}