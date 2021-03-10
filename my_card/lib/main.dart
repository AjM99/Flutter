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
            child: Column(
          mainAxisAlignment: MainAxisAlignment
              .center, // this is very imp, rather than changing spacing individually u can do it at once
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.fromLTRB(40, 80, 60, 0),
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 0),
              child: Image(
                image: AssetImage('images/balls.jpg'),
              ),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.blue,
              child: Text('hello 2'),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.red,
              child: Text('hello 2'),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            )
          ],
        )),
      ),
    );
  }
}
