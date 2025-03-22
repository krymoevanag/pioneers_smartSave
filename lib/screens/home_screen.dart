import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pioneers SmartSave")),
      body: const Center(
        child: Text("Welcome to Pioneers SmartSave!", style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
