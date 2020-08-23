import 'package:flutter/material.dart';
import './DisplayKalkulatorBMI.dart';

void main() => runApp(kalkulatorBMI());
class kalkulatorBMI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kalkulator BMI',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: DisplayKalkulatorBMI(),
    );
  }
}
