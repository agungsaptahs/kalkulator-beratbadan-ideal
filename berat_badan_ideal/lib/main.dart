import 'package:flutter/material.dart';

void main() => runApp(kalkulatorBMI());
class kalkulatorBMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator BMI',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: DisplayKalkulatorBMI(),
    );
  }
}
