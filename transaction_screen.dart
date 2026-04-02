import 'package:flutter/material.dart';

class TransactionScreen extends StatefulWidget {
  @override
  _TransactionScreenState createState() => _TransactionScreenState();
}

class _TransactionScreenState extends State<TransactionScreen> {
  final List<String> transactions = [];

  void addTransaction() {
    setState(() {
      transactions.add("New Expense ₹100");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Transactions")),
      body: transactions.isEmpty
          ? Center(child: Text("No transactions yet"))
          : ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(transactions[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        transactions.removeAt(index);
                      });
                    },
                  ),
                );
              }),
      floatingActionButton: FloatingActionButton(
        onPressed: addTransaction,
        child: Icon(Icons.add),
      ),
    );
  }
}
