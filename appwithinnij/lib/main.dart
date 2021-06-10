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

  int _newvalue = 0;

  void _add(){
    setState(() {
      _newvalue++;
    });
  }

  void _substract(){
    setState(() {
      _newvalue--;
    });
  }

  String _value = 'Hola Mundo';

  void _onPressed(){
    setState(() {
      _value = new DateTime.now().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Aplicación de Prueba'),
      ),
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Column(
          children: <Widget>[
            new Text("Value = ${_newvalue}"),
            new IconButton(onPressed: _add, icon: new Icon(Icons.add)),
            new IconButton(onPressed: _substract, icon: new Icon(Icons.remove))
          ],
        ),
      ),
    );
  }
}