import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text("Accueil"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _buttonForm(),
          ],
        ),
      ),
    );
  }
  Widget _buttonForm() {
    return new Center(
      child : RaisedButton(
        onPressed: () {
          // TODO faire action
        },
        child: Text('Formulaire'),
      ),
    );
  }
}