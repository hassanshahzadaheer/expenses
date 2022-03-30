import 'package:flutter/material.dart';


class NewTransaction extends StatelessWidget {
  
  final inputTitle = TextEditingController();
  final inputAmount = TextEditingController();
  
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
                    print("Title" + inputTitle.text);
                    print("Amount " + inputAmount.text);
                  }, child: Text("Submit")),
                ], crossAxisAlignment: CrossAxisAlignment.end),
              ),
              elevation: 5,
            );
  }
}