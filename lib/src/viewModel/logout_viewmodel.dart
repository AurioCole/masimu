import 'package:flutter/material.dart';
import 'package:masimu_app/service/firebase_service.dart';

class LogoutViewModel extends ChangeNotifier{
  
  final FirebaseAuthService _auth = FirebaseAuthService();
  String? _error;
  String? get error => _error;

  Future<void> signOut() async {
    await _auth.signOut();
    _error = null;
    notifyListeners();
  }
  
}