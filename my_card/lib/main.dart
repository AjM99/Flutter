import 'package:flutter/material.dart';

void main() {
  runApp(MyApppp());
}

// stless --> dont type the whole thing just type this
class MyApppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Container(
            height: 100,
            width: 100,
            margin: EdgeInsets.fromLTRB(40, 80, 60, 10),
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 0),
            color: Colors.white,
            child: Text('hello'),
          ),
        ),
      ),
    );
  }
}
