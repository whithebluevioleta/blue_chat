import 'package:flutter/material.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as ui_auth;
import 'package:firebase_auth/firebase_auth.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ui_auth.SignInScreen(
                  providers: [
                    ui_auth.PhoneAuthProvider(),
                  ],
                  actions: [
                    ui_auth.AuthStateChangeAction<ui_auth.SignedIn>(
                      (context, state) async {
                        final user = FirebaseAuth.instance.currentUser;
                        if (user != null) {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => const HomeScreen(),
                            ),
                          );
                        } else {
                          print('User not signed in!');
                        }
                      },
                    ),
                  ],
                ),
              ),
            );
          },
          child: const Text('Login with Phone Number'),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: const Center(
        child: Text('Welcome to the Home Screen!'),
      ),
    );
  }
}
