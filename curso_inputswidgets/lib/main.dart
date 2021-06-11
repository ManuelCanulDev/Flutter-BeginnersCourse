import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {

  int _value1 = 0;

  void _setValue1(value) => setState(() => _value1 = value);

  Widget makeRadios(){
    final list = List<Radio>.generate(10, (i) => new Radio(value: i, groupValue: _value1, onChanged: _setValue1));

    Column column = new Column(children: list,);
    return column;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Name here'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            makeRadios(),
          ],
        ),
      ),
    );
  }
}