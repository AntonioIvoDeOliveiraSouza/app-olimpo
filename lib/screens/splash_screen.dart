// screens/splash_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/user_provider.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkUserAndNavigate();
  }

  Future<void> _checkUserAndNavigate() async {
    // Aguardar um pouco para exibir a splash screen
    await Future.delayed(const Duration(seconds: 2));
    
    if (!mounted) return;
    
    // Verificar o estado do usuário
    final userState = ref.read(userProvider);
    
    // Aguardar até que o estado seja inicializado
    if (!userState.isInitialized) {
      await Future.delayed(const Duration(milliseconds: 500));
    }
    
    if (!mounted) return;
    
    // Navegar para a tela apropriada
    final user = ref.read(userProvider).currentUser;
    
    if (user != null) {
      // Usuário está logado, ir para o menu
      Navigator.pushReplacementNamed(context, '/menu');
    } else {
      // Usuário não está logado, ir para o login
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/data/images/logo.png',
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 20),
            Text(
              "Olimpo",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}