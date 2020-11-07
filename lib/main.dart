import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: "Work Finder", home: SIForm()));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

class _SIFormState extends State<SIForm> {
  final _minimumPadding = 5.0;
  var _currency = ["Rupee", "Dollar", "Pound"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Work Finder")),
      body: Container(
          margin: EdgeInsets.all(_minimumPadding * 2),
          child: Column(children: <Widget>[
            getImageAsset(),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Email",
                      hintText: "yourname@domain.com",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        labelText: "Password",
                        hintText: "Enter your password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0))))),
            Row(
              children: <Widget>[
                Expanded(
                    child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            labelText: "Name",
                            hintText: "Your Name",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(0.5))))),
                Expanded(
                  child: DropdownButton<String>(
                    items: _currency.map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    value: "Rupees",
                    onChanged: (String newValueSelected) {},
                  ),
                )
              ],
            )
          ])),
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/logo.png');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 10),
    );
  }
}
