import 'package:flutter/material.dart';
import 'package:olimpo/screens/menu_screen.dart';
import 'package:olimpo/config/preference_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    PreferenceTheme.setTema(); 
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    PreferenceTheme.setTema();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: PreferenceTheme.tema,
      builder: (BuildContext context, Brightness brightness, Widget? _) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.deepPurple,
            brightness: brightness, 
          ),
          home: const MenuScreen(),
        );
      },
    );
  }
}