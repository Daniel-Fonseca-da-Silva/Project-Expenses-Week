import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  // Variables
  final List<Transaction> transactions;

  // Construtor
  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transactions.isEmpty ? Column(
        children: [
          SizedBox(height: 20),
          Text(
            'Nenhuma Transação Cadastrada!',
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(height: 20),
          Container(
            height: 200,
            child: Image.asset('assets/images/waiting.png',
            fit: BoxFit.cover,
            ),
          )
        ],
      ) : ListView.builder(
        itemCount: transactions.length,
        itemBuilder: (ctx, index) {

          final tr = transactions[index];

          return Card(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 2,
                  )),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'R\$ ${tr.value.toStringAsFixed(2)}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.green
                        ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tr.title,
                      style: Theme.of(context).textTheme.headline6,
                      // style:
                      //     TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      new DateFormat('d MMM y').format(tr.date),
                      style: TextStyle(color: Colors.grey[600]),
                    )
                  ]
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
