// providers/user_provider.dart
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/user_model.dart';
import '../config/user_storage.dart';

// State class para gerenciar o estado do usuário
class UserState {
  final UserModel? currentUser;
  final bool isLoading;
  final String? error;
  final bool isInitialized; // Para controlar se já carregou do storage

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

// Notifier para gerenciar as ações do usuário
class UserNotifier extends StateNotifier<UserState> {
  UserNotifier() : super(UserState()) {
    // Carregar usuário automaticamente ao inicializar
    _loadUserFromStorage();
  }

  // Carregar usuário do storage
  Future<void> _loadUserFromStorage() async {
    state = state.copyWith(isLoading: true);
    
    try {
      final user = await UserStorage.loadUser();
      state = state.copyWith(
        currentUser: user,
        isLoading: false,
        isInitialized: true,
      );
    } catch (e) {
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