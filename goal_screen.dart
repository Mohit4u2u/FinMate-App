import 'package:flutter/material.dart';

class GoalScreen extends StatelessWidget {
  final int streak = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Goals")),
      body: Center(
        child: Text("🔥 No-Spend Streak: $streak days",
            style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
