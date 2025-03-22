import 'package:flutter/material.dart';

class MemberDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Member Dashboard")),
      body: Center(child: Text("Welcome, Member!")),
    );
  }
}
