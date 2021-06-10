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

  String _Value = "";

  void onChange(String value){
    setState(() => _Value = 'Change ${value}');
  }

  void onSubmit(String value){
    setState(() => _Value = 'Submit ${value}');
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
            new Text(_Value),
            new TextField(
              decoration: new InputDecoration(
                labelText: "Hello",
                hintText: "Hint",
                icon: new Icon(Icons.people)
              ),
              autocorrect: true,
              autofocus: true,
              keyboardType: TextInputType.number,
              onChanged: onChange,
              onSubmitted: onSubmit,
            )
          ],
        ),
      ),
    );
  }
}