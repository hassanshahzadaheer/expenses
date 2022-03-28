import 'package:expenses/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() => runApp(Expenses());

class Expenses extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction('tr-1', 'T-shirt', 44.4, DateTime.now()),
    Transaction('tr-2', 'Laptop bag', 90.4, DateTime.now()),
    Transaction('tr-3', 'Back care', 200.89, DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Expenses Tracker"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              color: Colors.cyan,
              shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.black12)),
              margin: EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 40,
                child: Text("Show text here"),
              ),
              elevation: 8,
            ),
            Card(
              child: Container(
                padding: EdgeInsets.all(3),
                child: Column(

                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(labelText: 'Title'),
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    TextField(
                      decoration: InputDecoration(labelText: 'Amount'),
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    TextButton(onPressed: () {}, child: Text("Submit")),
                    
                  ],
                  crossAxisAlignment: CrossAxisAlignment.end
                ),
              ),
              elevation: 5,
            ),
            Column(
              children: transactions.map((transaction) {
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
            ),
          ],
        ),
      ),
    );
  }
}
