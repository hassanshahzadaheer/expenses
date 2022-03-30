import 'package:flutter/material.dart';
import 'package:expenses/widgets/transaction_list.dart';


void main() => runApp(Expenses());

class Expenses extends StatelessWidget {
 


  final inputTitle = TextEditingController();
  final inputAmount = TextEditingController();

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
                child: Column(children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title'),
                    style: TextStyle(fontSize: 12, color: Colors.black),
                    controller: inputTitle,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount'),
                    style: TextStyle(fontSize: 12, color: Colors.black),
                   controller: inputAmount,
                  ),
                  TextButton(onPressed: () {
                    print("Title" + inputTitle.text);
                    print("Amount " + inputAmount.text);
                  }, child: Text("Submit")),
                ], crossAxisAlignment: CrossAxisAlignment.end),
              ),
              elevation: 5,
            ),
            TransactionList(),
          ],
        ),
      ),
    );
  }
}

