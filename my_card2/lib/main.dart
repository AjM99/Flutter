import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, //do this at end
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/Me3.jpeg'),
              ),
              Text(
                'Anuj More',
                style: TextStyle(
                    fontFamily: "Fascinate",
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                    fontFamily: "Titillium",
                    fontSize: 20,
                    letterSpacing: 2.5,
                    color: Colors.blueGrey[900],
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 29,
                width: 200,
                child: Divider(
                  color: Colors.blueGrey[900],
                  thickness: 2,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.phone_android,
                        size: 40,
                        color: Colors.blueGrey,
                      ),
                      SizedBox(width: 20),
                      Text(
                        '+91 123 456 7891',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueGrey,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: Padding(
                  padding: const EdgeInsets.all(
                      0), //listtitle padds itself,dosent require seferate padding
                  child: ListTile(
                    leading: Icon(
                      Icons.mail_outline,
                      size: 40,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      'anuj.more10424@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
