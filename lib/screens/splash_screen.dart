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
  
  bool _animationComplete = false; 

  @override
  void initState() {
    super.initState();
    _startMinimumTimer();
  }

  Future<void> _startMinimumTimer() async {
    await Future.delayed(const Duration(seconds: 3));

    if (mounted) {
      setState(() {
        _animationComplete = true;
      });
      _checkAndNavigate();
    }
  }

  void _checkAndNavigate() {
    if (_hasNavigated || !_animationComplete) return;
    final userState = ref.read(userProvider);
    if (userState.isInitialized && !userState.isLoading) {
      _finalizeNavigation(userState.currentUser != null);
    }
  }

  void _finalizeNavigation(bool isLoggedIn) {
    if (!mounted) return;
    _hasNavigated = true;
    
    final route = isLoggedIn ? '/menu' : '/login';
    debugPrint('Navigating to: $route');
    
    Navigator.of(context).pushNamedAndRemoveUntil(route, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(userProvider, (previous, next) {
      if (next.isInitialized && !next.isLoading) {
        _checkAndNavigate();
      }
    });

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'lib/assets/images/logo.png',
              width: 120,
              height: 120,
            ),
            const SizedBox(height: 24),
            const Text(
              "Olimpo",
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 48),
            const CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              strokeWidth: 3,
            ),
            const SizedBox(height: 16),
            const Text(
              "Carregando...",
              style: TextStyle(color: Colors.white70, fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}