import 'package:flutter/material.dart';

class MemberDashboard extends StatelessWidget {
  const MemberDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Member Dashboard")),
      body: Center(child: Text("Welcome, Member!")),
    );
  }
}
