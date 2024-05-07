import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:masimu_app/src/service/firebase_service.dart';

class LoginViewModel extends ChangeNotifier{
  
  final FirebaseAuthService _auth = FirebaseAuthService();

  String? _error;
  String? get error => _error;

  Future<void> signIn(BuildContext context, String email, String password) async {
    String? userId = await _auth.signIn(email, password);

    if (userId == null) {
      _error = "Falha ao tentar entrar!";
      print("$_error");
    } else {
      _error = "";
      print("BEM VINDO $userId");
      context.pushReplacement("/");
    }
    notifyListeners();
  }
}