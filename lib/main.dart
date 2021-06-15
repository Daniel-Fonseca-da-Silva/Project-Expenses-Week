import 'package:flutter/material.dart';
import './components/transaction_user.dart';

main() => runApp(new ExpensesApp());

class ExpensesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Despesas pessoais')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
                child: Card(
              color: Colors.blue,
              child: Text('Gráfico'),
              elevation: 5,
            )),
            TransactionUser(),
          ],
        ),
      ),
    );
  }
}
