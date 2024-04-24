import 'package:flutter/material.dart';
import 'package:masimu_app/src/service/auth_sevice.dart';

class AuthViewModel extends ChangeNotifier {
  final AuthService _authService = AuthService();
  String? _error;

  String? get error => _error;

  Future<void> signUp(String email, String password) async {
    final user = await _authService.signUp(email, password);
    if (user == null) {
      _error = "Failed to sign up";
    } else {
      _error = null;
    }
    notifyListeners();
  }

  Future<void> signIn(String email, String password) async {
    final user = await _authService.signIn(email, password);
    if (user == null) {
      _error = "Failed to sign in";
    } else {
      _error = null;
    }
    notifyListeners();
  }

  Future<void> signOut() async {
    await _authService.signOut();
    _error = null;
    notifyListeners();
  }
}
