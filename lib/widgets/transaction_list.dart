import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:expenses/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  TransactionList(this.transactions);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      
      height: 400,
      child: ListView(
        
        children: transactions.map((transaction) {
          return Card(
            
            elevation: 8.0,
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                  decoration: new BoxDecoration(
                      border: new Border(
                          right: new BorderSide(
                              width: 1.0, color: Colors.white24))),
                  margin:      new EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
                  child: Text(
                    '\Rs ${transaction.amount}',
                    style: TextStyle(
                        color: Colors.redAccent, fontWeight: FontWeight.bold),
                  ),

                  
                ),
                Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      transaction.name,
                      style: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      DateFormat('yyyy-MM-dd').format(transaction.date),
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
