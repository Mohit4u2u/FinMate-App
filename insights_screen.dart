import 'package:flutter/material.dart';

class InsightsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Insights")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text("Top Spending: Food"),
            SizedBox(height: 10),
            Text("Weekly Trend: +15%"),
            SizedBox(height: 10),
            Text("Tip: Reduce food expenses"),
          ],
        ),
      ),
    );
  }
}
