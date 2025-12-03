import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:olimpo/screens/menu_screen.dart';
import 'package:olimpo/config/preference_theme.dart';
import 'package:olimpo/screens/login_screen.dart';
import 'package:olimpo/screens/register_screen.dart';
import 'package:olimpo/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await PreferenceTheme.loadTheme();

  runApp(const ProviderScope(child: MyApp()));
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
  Widget build(BuildContext context) { //Two Builders - 1st: DarkTheme; 2nd: Colors
    return ValueListenableBuilder(
      valueListenable: PreferenceTheme.tema,
      builder: (BuildContext context, Brightness brightness, Widget? _) {
        return ValueListenableBuilder(
          valueListenable: PreferenceTheme.color, 
          builder: (BuildContext context, Color actualcolor, Widget? _){
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              // nova rota com login
              initialRoute: '/splash',
              routes: {
                '/splash': (context) => const SplashScreen(),
                'login': (context) => LoginScreen(),
                '/register': (context) => RegisterScreen(),
                '/menu': (context) => const MenuScreen(),
              },
              onGenerateRoute: (settings) {
                return MaterialPageRoute(
                  builder: (context) => const SplashScreen(),
                );
              },
              theme: ThemeData(
                useMaterial3: true,
                colorScheme: ColorScheme.fromSeed(
                  seedColor: actualcolor,
                  brightness: brightness, 
                ),
                
                primaryColor: brightness == Brightness.dark ? const Color.fromARGB(255, 39, 0, 131) : actualcolor,
                
                appBarTheme: AppBarTheme(
                  backgroundColor: brightness == Brightness.dark ? const Color.fromARGB(255, 39, 0, 131) : actualcolor,
                  foregroundColor: Colors.white,
                ),

                bottomAppBarTheme: BottomAppBarThemeData(
                  color: brightness == Brightness.dark ? const Color.fromARGB(255, 39, 0, 131) : actualcolor,
                ),
              ),
            );
          }
        );
      },
    );
  }
}