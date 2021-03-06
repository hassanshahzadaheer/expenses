import 'package:flutter/material.dart';
import 'package:expenses/widgets/transaction_list.dart';


class NewTransaction extends StatefulWidget {
  final Function getTranscation;

  NewTransaction(this.getTranscation);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final inputTitle = TextEditingController();

  final inputAmount = TextEditingController();

  void submitData() {
    final enteredTitle = inputTitle.text;
    final enteredAmount = double.parse(inputAmount.text);
    if (enteredTitle.isEmpty || enteredAmount <= 0)
    {
      return;
    }
    widget.getTranscation(
      enteredTitle,
      enteredAmount,
    );

    Navigator.of(context).pop();
    
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: Container(
        decoration: BoxDecoration(color: Color.fromRGBO(64, 75, 96, .9)),
        padding: EdgeInsets.all(10),
        child: Column(children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            controller: inputTitle,
            onSubmitted: (_) => submitData,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            controller: inputAmount,
            keyboardType: TextInputType.number,
            onSubmitted: (_) => submitData,
          ),
          TextButton(
              onPressed: submitData,
              child: Text(
                "Submit",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )),
        ], crossAxisAlignment: CrossAxisAlignment.end),
      ),
      elevation: 8.0,
    );
  }
}
