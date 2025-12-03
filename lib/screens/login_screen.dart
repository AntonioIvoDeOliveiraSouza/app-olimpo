import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/user_provider.dart';
import '../widgets/form_text_field.dart';
import '../widgets/primary_button.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.green[700],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.green[50],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.green[100]!),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Seja bem-vindo!",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                  ),
                ),
                const SizedBox(height: 20),
                FormTextField(controller: email, label: "Email"),
                const SizedBox(height: 12),
                FormTextField(
                  controller: password,
                  label: "Senha",
                  obscure: true,
                ),
                const SizedBox(height: 20),
                userState.isLoading
                    ? const CircularProgressIndicator()
                    : PrimaryButton(
                        text: "Entrar",
                        onPressed: () async {
                          final ok = await ref
                              .read(userProvider.notifier)
                              .login(
                                email.text.trim(),
                                password.text.trim(),
                              );
                          
                          if (ok && context.mounted) {
                            Navigator.pushReplacementNamed(context, '/menu');
                          } else if (context.mounted) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Email ou senha incorretos"),
                              ),
                            );
                          }
                        },
                      ),
                const SizedBox(height: 12),
                TextButton(
                  child: const Text("Criar conta"),
                  onPressed: () => Navigator.pushNamed(context, '/register'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}