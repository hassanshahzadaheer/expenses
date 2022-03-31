import 'package:flutter/material.dart';
import 'package:expenses/widgets/transaction_list.dart';
import 'package:expenses/widgets/new_transaction.dart';
import 'package:expenses/models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {

   final List<Transaction> _transactions = [
    Transaction('tr-1', 'T-shirt', 44.4, DateTime.now()),
    Transaction('tr-2', 'Laptop bag', 90.4, DateTime.now()),
    Transaction('tr-3', 'Back care', 200.89, DateTime.now()),
  ];
  
  void _newTransaction(String inputTitle, double inputAmount) {
    final addTransaction = Transaction(
        DateTime.now().toString(), inputTitle, inputAmount, DateTime.now());

    setState(() {
      _transactions.add(addTransaction);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: <Widget>[
        NewTransaction(_newTransaction),
        TransactionList(_transactions),
      ],
    );
  }
}
