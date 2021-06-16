import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {

  // variables
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  // Functions
  final void Function(String, double) onSubmit;

  _submitForm() {

    final title = titleController.text;
    final value = double.tryParse(valueController.text) ?? 0.0;

    if(title .isEmpty || value <= 0)
    {
      return;
    }

    onSubmit(title, value); // Throw to submit function
                
  }

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
              onSubmitted: (_) => _submitForm(),
              decoration: InputDecoration(
                labelText: 'Titulo',
              ),
            ),
            TextField(
              controller: valueController,
              keyboardType: TextInputType.numberWithOptions(decimal: true), // Keyboard number ANDROID/IOS
              onSubmitted: (_) => _submitForm(),
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
                  onPressed: _submitForm 
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
