import 'dart:math';

import 'package:flutter/material.dart';
import 'transaction_form.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class TransactionUser extends StatefulWidget {
  @override
  _TransactionUserState createState() => _TransactionUserState();
}

class _TransactionUserState extends State<TransactionUser> {

  final _transactions = {
    
    Transaction(
        id: 't1', title: 'Conta #0', value: 49.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta #1', value: 58.99, date: DateTime.now()),
  };

  // Method
  _addTransaction(String title, double value) {
    final newTransaction = Transaction(
        id: Random().nextDouble().toString(),
        title: title,
        value: value,
        date: DateTime.now());

    // Called when value is changed
    setState(() {
      _transactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TransactionForm(_addTransaction), // Add to method to child by constructor
      TransactionList(_transactions.toList())
    ]);
  }
}
