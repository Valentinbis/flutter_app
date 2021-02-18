import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibration/vibration.dart';

class VibrateShake extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Secouer pour vibrer'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          HapticFeedback.vibrate();
        },
        tooltip: 'Vibration',
        child: Icon(Icons.ad_units_sharp),
      ),
    );
  }
}
