import 'package:flutter/material.dart';
import 'package:expenses/widgets/user_transaction.dart';
import 'package:expenses/widgets/new_transaction.dart';

void main() => runApp(Expenses());

class Expenses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expenses Tracker",
      home: ExpensesMainScreen(),
    );
  }
}

class ExpensesMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
            elevation: 5,
          ),
          UserTransaction(),
        ],
      ),
    );
  }
}
