import './models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(new ExpensesApp());

class  ExpensesApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

     final _transactions = {
      Transaction(
        id: 't1',
        title: 'Novo Tênis de Corrida',
        value: 49.99,
        date: DateTime.now()
      ),
      Transaction(
        id: 't2',
        title: 'Conta de luz',
        value: 58.99,
        date: DateTime.now()
      )
    };

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Despesas pessoais'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: Card(
              color: Colors.blue,
              child: Text('Gráfico'),
              elevation: 5,
            ),
          ),
          Column(
            children: _transactions.map((tr){ // Convert transaction to widget
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        tr.value.toString()
                      ),
                    )
                    ,
                    Column(
                      children: [
                        Text(tr.title),
                        Text(tr.date.toString())
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}