import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Balance: ₹12,500", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Income: ₹20,000"),
            Text("Expense: ₹7,500"),
            SizedBox(height: 20),
            Text("Savings Progress"),
            LinearProgressIndicator(value: 0.6),
            SizedBox(height: 20),
            Text("Recent Activity", style: TextStyle(fontWeight: FontWeight.bold)),
            ListTile(title: Text("Food"), trailing: Text("-₹200")),
            ListTile(title: Text("Salary"), trailing: Text("+₹5000")),
          ],
        ),
      ),
    );
  }
}
