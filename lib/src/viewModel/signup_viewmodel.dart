import 'package:flutter/material.dart';
import 'package:masimu_app/src/service/firebase_service.dart';

class SignUpViewModel extends ChangeNotifier{
  
  final FirebaseAuthService _auth = FirebaseAuthService();
  String? _error;
  String? get error => _error;

  Future<void> signUp(String email, String password) async {
    final user = await _auth.signUp(email, password);
    if (user == null) {
      _error = "Falha ao cadastrar";
    } else {
      _error = null;
    }
    notifyListeners();
  }

}