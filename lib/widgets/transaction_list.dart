import 'package:flutter/material.dart';
import 'package:matcher/matcher.dart';
import 'package:intl/intl.dart';
import 'package:expenses/models/transaction.dart';


class TransactionList extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TranscationListState();
  }

}

class _TranscationListState extends State<TransactionList> {

  final List<Transaction> _transactions = [
    Transaction('tr-1', 'T-shirt', 44.4, DateTime.now()),
    Transaction('tr-2', 'Laptop bag', 90.4, DateTime.now()),
    Transaction('tr-3', 'Back care', 200.89, DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column (
              children: _transactions.map((transaction) {
                return Card(
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                            vertical: 3.0, horizontal: 3.0),
                        child: Text(
                          '\Rs ${transaction.amount}',
                          style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.black,
                                width: 2.0,
                                style: BorderStyle.solid)),
                        padding: EdgeInsets.all(10),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
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
            );
  }
  
}

