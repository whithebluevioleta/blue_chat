import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User? get user => _auth.currentUser;

  Future<void> signInWithPhoneNumber(String phoneNumber) async {
    // Implementar lógica para autenticación con número de teléfono
  }

  Future<void> signOut() async {
    await _auth.signOut();
    notifyListeners();
  }
}
