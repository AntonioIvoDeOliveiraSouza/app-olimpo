import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_model.dart';
import '../providers/user_provider.dart';
import '../widgets/form_text_field.dart';
import '../widgets/primary_button.dart';

class RegisterScreen extends ConsumerWidget {
  RegisterScreen({super.key});

  final name = TextEditingController();
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userState = ref.watch(userProvider);
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Criar conta"),
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
                  "Cadastro",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.green[700],
                  ),
                ),
                const SizedBox(height: 20),
                FormTextField(controller: name, label: "Nome completo"),
                const SizedBox(height: 12),
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
                        text: "Cadastrar",
                        onPressed: () async {
                          final newUser = UserModel(
                            nome: name.text.trim(),
                            email: email.text.trim(),
                            senha: password.text.trim(),
                          );
                          
                          await ref
                              .read(userProvider.notifier)
                              .register(newUser);
                          
                          if (context.mounted) {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/menu',
                              (_) => false,
                            );
                          }
                        },
                      ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}