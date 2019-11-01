import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() => runApp(TWComp());

class TWComp extends StatelessWidget {
  @override
  Widget build(BuildContext contex) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("TW Comp @sg"),
        ),
        body: Column(
          children: <Widget>[
            SalaryInput('Type the basic monthly salary (as in IPA)', 0),
            SalaryInput('Working days per week (default 5.5 days)', 5.5),
            ResultCard(),
          ],
        ),
      ),
    );
  }
}

class SalaryInput extends StatelessWidget {
  final String hintText;
  final double defaultValue;
  SalaryInput(this.hintText, this.defaultValue);

  @override
  Widget build(BuildContext contex) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
        ),
        onChanged: (text) {
          print("First text field: $text");
        },
        keyboardType: TextInputType.number,
      ),
      margin: EdgeInsets.only(top: 10, left: 40, right: 40),
    );
  }
}

class ResultCard extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Text('TEXT');
  }
}
