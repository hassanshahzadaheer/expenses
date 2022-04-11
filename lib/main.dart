import 'package:flutter/material.dart';
import 'package:expenses/widgets/new_transaction.dart';
import 'package:expenses/widgets/transaction_list.dart';
import 'package:expenses/models/transaction.dart';


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

class ExpensesMainScreen extends StatefulWidget {

  @override
  State<ExpensesMainScreen> createState() => _ExpensesMainScreenState();
}

class _ExpensesMainScreenState extends State<ExpensesMainScreen> {


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

  void startNewTransaction(BuildContext getContext ) {
    showModalBottomSheet(context: getContext, builder: (_) {
      return GestureDetector(
        onTap: () {},
        child: NewTransaction(_newTransaction),
        behavior: HitTestBehavior.opaque,
      );
    },);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
        title: Text("Expenses Tracker"),
        actions: <Widget>[IconButton(onPressed: () => startNewTransaction(context), icon: Icon(Icons.add))],
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
                decoration:
                    BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                width: double.infinity,
                height: 40,
                child: Text("Show text here"),
              ),
            ),
            TransactionList(_transactions),
            // UserTransaction(),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton( onPressed: () => startNewTransaction(context), child : Icon(Icons.add)),
    );
  }
}
