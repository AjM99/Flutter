import 'package:flutter/material.dart';
import 'Screen1.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //copy with helps us to add our own customization to the existing theme
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0A0E21),
        scaffoldBackgroundColor: Colors.blueGrey[900],
        textTheme: TextTheme(body1: TextStyle(color: Colors.white)),
      ),
      home: InputPage(),
    );
  }
}
