import 'package:flutter/material.dart';
import 'Form.dart';
import 'Geolocalisation.dart';
import 'TakePicture.dart';
import 'VibrateShake.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accueil"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            _buttonForm(context),
            _buttonTakePicture(context),
            _buttonGeolocalisation(context),
            _buttonVibrateShake(context),
          ],
        ),
      ),
    );
  }

  // Create button to redirect calcul Form page
  Widget _buttonForm(BuildContext context) {
    return new Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Formulaire()));
        },
        child: Text('Formulaire'),
      ),
    );
  }

  // Create button to redirect take picture page
  Widget _buttonTakePicture(BuildContext context) {
    return new Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => TakePicture()));
        },
        child: Text('Photo'),
      ),
    );
  }

  // Create button to redirect Geolocalisation page
  Widget _buttonGeolocalisation(BuildContext context) {
    return new Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => Geolocalisation()));
        },
        child: Text('Géolocalisation'),
      ),
    );
  }

  // Create button to redirect Geolocalisation page
  Widget _buttonVibrateShake(BuildContext context) {
    return new Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => VibrateShake()));
        },
        child: Text('Vibration par secousse'),
      ),
    );
  }
}
