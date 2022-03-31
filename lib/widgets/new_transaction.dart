import 'package:flutter/material.dart';
import 'package:expenses/widgets/transaction_list.dart';
import 'package:expenses/widgets/user_transaction.dart';


class NewTransaction extends StatelessWidget {
  final Function getTranscation;
  final inputTitle = TextEditingController();
  final inputAmount = TextEditingController();


  NewTransaction(this.getTranscation);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
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
                    getTranscation (
                      inputTitle.text,
                      double.parse(inputAmount.text),
                    );                   
                  }, child: Text("Submit")),
                ], crossAxisAlignment: CrossAxisAlignment.end),
              ),
              elevation: 5,
            );
  }
}