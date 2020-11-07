import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "First Flutter App", home: SIForm()));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  // var _currency = ["Rupee", "Dollar", "Pound"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First App")),
      body: Container(child: Column(children: <Widget>[])),
    );
  }
}
