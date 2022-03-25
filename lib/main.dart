import 'package:flutter/material.dart';

void main() => runApp(Expenses());

class Expenses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title : Text("Expenses Tracker"),
          backgroundColor: Colors.black,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget> [
            Card(
              color: Colors.cyan,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.black12)
              ),
              margin: EdgeInsets.all(10.0),
              child: Container(
                width: double.infinity,
                height: 40,
                child: Text("Show text here"),
                
              ),
              elevation: 8,
            ),
            Card(
              
              child: Text("Transcation"),
            ),
          ],
        ),
      ),
    );
  }
}