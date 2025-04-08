import 'package:flutter/material.dart';
import 'auth_service.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final AuthService _authService = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login"), centerTitle: true),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.login),
          label: const Text("Sign in with Google"),
          onPressed: () async {
            final userCredential = await _authService.signInWithGoogle();
            if (userCredential != null) {
              final user = userCredential.user;
              print("✅ Signed in as: ${user?.displayName}");

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (_) => const HomeScreen()),
              );
            } else {
              print("❌ Sign-in failed");
            }
          },
        ),
      ),
    );
  }
}
