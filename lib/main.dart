import 'package:flutter/material.dart';
import 'package:expenses/widgets/user_transaction.dart';
import 'package:expenses/widgets/new_transaction.dart';

void main() => runApp(Expenses());

class Expenses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Expenses Tracker",
      theme: new ThemeData(primaryColor: Color.fromRGBO(58, 66, 86, 1.0)),
      home: ExpensesMainScreen(),
    );
  }
}

class ExpensesMainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Expenses Tracker"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 8.0,
              color: Colors.white,
             margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                width: double.infinity,
                height: 40,
                child: Text("Show text here"),
              ),
              
            ),
            UserTransaction(),
          ],
        ),
      ),
    );
  }
}

