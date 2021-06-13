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
        id: 't1',
        title: 'Novo Tênis de Corrida',
        value: 49.99,
        date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Conta de luz', value: 58.99, date: DateTime.now())
  };

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [TransactionList(_transactions.toList()), TransactionForm()]);
  }
}
