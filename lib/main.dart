import 'package:expenses/transaction.dart';
import 'package:flutter/material.dart';

void main() => runApp(Expenses());

class Expenses extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction('tr-1', 'T-shirt', 44.4, DateTime.now()),
    Transaction('tr-2', 'Laptop bag', 90.4, DateTime.now()),
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
          mainAxisAlignment: MainAxisAlignment.start,
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
            Column(
              children: transactions.map((transaction) {
                return Card(
                  child: Row(
                    
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 3.0),
                        child: Text(transaction.amount.toString(),
                        style: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2.0, style: BorderStyle.solid)
                        ),
                        padding: EdgeInsets.all(10),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(transaction.name,
                          style: TextStyle(
                            color: Colors.indigoAccent,
                            fontSize: 18,
                            fontWeight: FontWeight.w500
                          ),
                          ),
                          Text(transaction.date.toString(),
                          style: TextStyle(
                            color: Colors.grey
                          ),
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
