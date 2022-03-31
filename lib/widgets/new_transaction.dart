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
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
              child: Container(
                 decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
                padding: EdgeInsets.all(3),
                child: Column(children: <Widget>[
                  TextField(
                    decoration: InputDecoration(labelText: 'Title',fillColor: Color.fromRGBO(64, 75, 96, .9),filled: true),
                   style: TextStyle(color: Colors.yellowAccent, fontWeight: FontWeight.bold),
                    controller: inputTitle,
                  ),
                  TextField(
                    decoration: InputDecoration(labelText: 'Amount',fillColor: Color.fromRGBO(64, 75, 96, .9),filled: true),
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                   controller: inputAmount,
                  ),
                  TextButton(onPressed: () {
                    getTranscation (
                      inputTitle.text,
                      double.parse(inputAmount.text),
                    );                   
                  }, child: Text("Submit" , style: TextStyle(color: Colors.yellowAccent, fontWeight: FontWeight.bold),)),
                ], crossAxisAlignment: CrossAxisAlignment.end),
              ),
               elevation: 8.0,
            );
  }
}