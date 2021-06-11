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

  String _display = '';

  String _value = '';

  void _onChange(String value){
    setState(() {
      _value = value;
    });
  }

  void _onClick(){
    setState(() {
      _display = _value;
    });
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
            new Text('TEXTO CON VALOR: ${_display}'),
            new TextField(onChanged: _onChange,),
            new RaisedButton(onPressed: _onClick, child: new Text('ENVIAR DATOS'),)
          ],
        ),
      ),
    );
  }
}