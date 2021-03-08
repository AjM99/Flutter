import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        title: Text("Rich"),
        backgroundColor: Colors.blueGrey[900],
      ),
      body: Center(
        // to put anything at center ---> Center(child:your stuff) OR alt enter
        child: Image(
          image: AssetImage('images/balls.jpg'),
        ),
      ),
    ),
  ));
}
