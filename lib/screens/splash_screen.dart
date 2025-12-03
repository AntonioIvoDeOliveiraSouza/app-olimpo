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
  bool _hasNavigated = false;

  void _navigateToNextScreen(bool isLoggedIn) {
    if (!mounted || _hasNavigated) return;
    
    debugPrint('Preparando navegação para: ${isLoggedIn ? "/menu" : "/login"}');
    _hasNavigated = true;
    
    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;
      
      final route = isLoggedIn ? '/menu' : '/login';
      debugPrint('Navegando para: $route');
      Navigator.pushReplacementNamed(context, route);
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(userProvider, (previous, next) {
      debugPrint('Listen disparado - isInitialized: ${next.isInitialized}, isLoading: ${next.isLoading}');
      if (next.isInitialized && !next.isLoading) {
        debugPrint('Iniciando navegação');
        _navigateToNextScreen(next.currentUser != null);
      }
    });

    return Scaffold(
      backgroundColor: Colors.green[700],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/data/images/logo.png',
              width: 100,
              height: 100,
            ),
            const SizedBox(height: 20),
            const Text(
              "Olimpo",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}