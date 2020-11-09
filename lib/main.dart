import 'dart:math';
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
  var _parts = ["some", "text"];
  var _actions = ["some", "text"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          color: Colors.black,
          margin: EdgeInsets.only(top: _minimumPadding * 20),
          child: Column(children: <Widget>[
            getImageParts(),
            img(),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: _minimumPadding * 10),
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child:
                    RaisedButton(child: Text("Roll Dices!"), onPressed: () {}))
          ])),
    );
  }

  Image img() {
    Random random;
    var _actions = [
      "images/some.png",
      "images/text.png",
      "images/that.png",
      "images/rolls.png",
      "images/and.png",
      "images/shuffles/png",
    ];
    int min = 0;
    int max = _actions.length - 1;
    random = new Random();
    int r = min + random.nextInt(max - min);
    String imageName = _actions[r].toString();
    return Image.asset(imageName);
  }

  Widget getImageParts() {
    AssetImage parts = AssetImage('images/some.png');
    Image image = Image(
      image: parts,
      width: 200.0,
      height: 200.0,
    );

    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding),
    );
  }

  Widget getImageActions() {
    var _actions = [
      "images/some.png",
      "images/text.png",
      "images/that.png",
      "images/rolls.png",
      "images/and.png",
      "images/shuffles/png",
    ];
    // int count = 0;
    // Future.delayed(const Duration(milliseconds: 500), () {
    //   count = count + 1;
    //   setState(() {
    //     // Here you can write your code for open new view
    //   });
    // });
    var random = new Random();
    int index = random.nextInt(5);
    AssetImage assetImage = AssetImage(_actions[index]);
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 200.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding),
    );
  }
}
