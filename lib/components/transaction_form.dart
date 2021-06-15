import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  // variables
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  // Function 
  final void Function(String, double) onSubmit;

  // Constructor 
  TransactionForm(this.onSubmit); // Throw information to father  

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Titulo',
              ),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(
                labelText: 'Valor (R\$)',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  child: Text('Nova Transação'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                  ),
                  onPressed: () {
                    final title = titleController.text;
                    final value = double.tryParse(valueController.text) ?? 0.0;
                    onSubmit(title, value); // Throw to submit function
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
