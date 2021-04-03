import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void Sound(notename) {
    final player = AudioCache();
    player.play('note$notename.wav');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: OutlineButton(
                  borderSide: BorderSide(width: 2),
                  highlightedBorderColor: Colors.white,
                  highlightColor: Colors.red,
                  child: Text('1'),
                  onPressed: () {
                    Sound(1);
                  },
                ),
              ),
              Expanded(
                child: OutlineButton(
                  borderSide: BorderSide(width: 2),
                  highlightColor: Colors.blue,
                  highlightedBorderColor: Colors.white,
                  child: Text('2'),
                  onPressed: () {
                    Sound(2);
                  },
                ),
              ),
              Expanded(
                child: OutlineButton(
                  borderSide: BorderSide(width: 2),
                  highlightedBorderColor: Colors.white,
                  highlightColor: Colors.yellow,
                  child: Text('3'),
                  onPressed: () {
                    Sound(3);
                  },
                ),
              ),
              Expanded(
                child: OutlineButton(
                  borderSide: BorderSide(width: 2),
                  highlightedBorderColor: Colors.white,
                  highlightColor: Colors.purple,
                  child: Text('4'),
                  onPressed: () {
                    Sound(4);
                  },
                ),
              ),
              Expanded(
                child: OutlineButton(
                  borderSide: BorderSide(width: 2),
                  highlightedBorderColor: Colors.white,
                  highlightColor: Colors.pink,
                  child: Text('5'),
                  onPressed: () {
                    Sound(5);
                  },
                ),
              ),
              Expanded(
                child: OutlineButton(
                  borderSide: BorderSide(width: 2),
                  highlightedBorderColor: Colors.white,
                  highlightColor: Colors.green,
                  child: Text('6'),
                  onPressed: () {
                    Sound(6);
                  },
                ),
              ),
              Expanded(
                child: OutlineButton(
                  borderSide: BorderSide(width: 2),
                  highlightedBorderColor: Colors.white,
                  highlightColor: Colors.indigo,
                  child: Text('7'),
                  onPressed: () {
                    Sound(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
