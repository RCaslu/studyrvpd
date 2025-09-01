import 'package:flutter_riverpod/flutter_riverpod.dart';

// Modelo simples de usuário
class User {
  final String username;
  User(this.username);
}

// StateNotifier que gerencia o estado de autenticação
class AuthNotifier extends StateNotifier<User?> {
  AuthNotifier() : super(null);

  void login(String username, String password) {
    // Aqui poderia ter chamada de API, verificação, etc.
    if (username.isNotEmpty && password.isNotEmpty) {
      state = User(username);
    }
  }

  void changeUsername(String newUsername) {
    if (state != null) {
      state = User(newUsername);
    }
  }

  void logout() {
    state = null;
  }
}

// Provider global
final authProvider = StateNotifierProvider<AuthNotifier, User?>((ref) {
  return AuthNotifier();
});
