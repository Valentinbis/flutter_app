import 'package:flutter/material.dart';
import 'Form.dart';

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
            _buttonForm(context),
          ],
        ),
      ),
    );
  }
  Widget _buttonForm(BuildContext context) {
    return new Center(
      child : RaisedButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Formulaire()));
        },
        child: Text('Formulaire'),
      ),
    );
  }
}