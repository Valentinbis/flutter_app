import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter/services.dart';

class Formulaire extends StatelessWidget {
  int val1;
  int val2;
  int total;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('formulaire d\'additions'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[_buildForm(context)],
        ),
      ),
    );
  }

  // Création du titre
  Widget _buildForm(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(15),
      child: new Column(
        children: <Widget>[
          _inputOne(),
          SizedBox(height: 10),
          _inputTwo(),
          SizedBox(height: 15),
          _buttonSubmit(),
          new Container(
            child: FlatButton(
              child: Text(total.toString()),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  // Premier Input
  Widget _inputOne() {
    return new Container(
      child: TextFormField(
        // récupérer mot de passe de l'user
        onChanged: (newText) {
          val1 = newText as int;
        },
        decoration: InputDecoration(
          labelText: "Valeur 1",
        ),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        // obscureText: true,
      ),
    );
  }

  // Seconde input
  Widget _inputTwo() {
    return new Container(
      child: TextFormField(
        // récupérer mot de passe de l'user
        onChanged: (newText) {
          val2 = newText as int;
        },
        decoration: InputDecoration(
          labelText: "Valeur 2",
        ),
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly
        ],
        // obscureText: true,
      ),
    );
  }

  Widget _buttonSubmit() {
    return new Container(
      child: RaisedButton(
        child: Text("Calculer"),
        color: Colors.red,
        onPressed: () {
          total = val1 + val2;
        },
      ),
    );
  }
}
