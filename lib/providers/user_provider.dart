import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_model.dart';
import '../config/user_storage.dart';

// State class para gerenciar o estado do usuário
class UserState {
  final UserModel? currentUser;
  final bool isLoading;
  final String? error;
  final bool isInitialized; 

  UserState({
    this.currentUser,
    this.isLoading = false,
    this.error,
    this.isInitialized = false,
  });

  UserState copyWith({
    UserModel? currentUser,
    bool? isLoading,
    String? error,
    bool? isInitialized,
  }) {
    return UserState(
      currentUser: currentUser ?? this.currentUser,
      isLoading: isLoading ?? this.isLoading,
      error: error ?? this.error,
      isInitialized: isInitialized ?? this.isInitialized,
    );
  }
}

class UserNotifier extends StateNotifier<UserState> {
  UserNotifier() : super(UserState()) {
    // Carregar usuário automaticamente ao inicializar
    _loadUserFromStorage();
  }

  // Carregar usuário do storage
  Future<void> _loadUserFromStorage() async {
    debugPrint('Iniciando carregamento do storage...');
    state = state.copyWith(isLoading: true);
    
    try {
      final user = await UserStorage.loadUser();
      debugPrint('Usuário carregado: ${user?.email ?? "Nenhum usuário"}');
      state = state.copyWith(
        currentUser: user,
        isLoading: false,
        isInitialized: true,
      );
      debugPrint('Estado atualizado - isInitialized: ${state.isInitialized}, isLoading: ${state.isLoading}, hasUser: ${state.currentUser != null}');
    } catch (e) {
      debugPrint('Erro ao carregar usuário: $e');
      state = state.copyWith(
        isLoading: false,
        isInitialized: true,
        error: e.toString(),
      );
    }
  }

  Future<bool> login(String email, String password) async {
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      // Simular chamada de API
      await Future.delayed(const Duration(seconds: 1));
      
      // Validação simples (substitua pela sua lógica real)
      if (email.isNotEmpty && password.isNotEmpty) {
        final user = UserModel(
          nome: "Usuario",
          email: email,
          senha: password,
        );
        
        // Salvar no storage
        await UserStorage.saveUser(user);
        
        state = state.copyWith(
          currentUser: user,
          isLoading: false,
        );
        return true;
      } else {
        state = state.copyWith(
          isLoading: false,
          error: "Email ou senha inválidos",
        );
        return false;
      }
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
      return false;
    }
  }

  Future<void> register(UserModel user) async {
    state = state.copyWith(isLoading: true, error: null);
    
    try {
      // Simular chamada de API
      await Future.delayed(const Duration(seconds: 1));
      
      // Salvar no storage
      await UserStorage.saveUser(user);
      
      state = state.copyWith(
        currentUser: user,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(
        isLoading: false,
        error: e.toString(),
      );
    }
  }

  Future<void> logout() async {
    // Remover do storage
    await UserStorage.removeUser();
    state = UserState(isInitialized: true);
  }
}

// Provider global
final userProvider = StateNotifierProvider<UserNotifier, UserState>((ref) {
  return UserNotifier();
});