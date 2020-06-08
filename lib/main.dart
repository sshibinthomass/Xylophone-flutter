import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  int soundNumber;
  void playSound(soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded playButton({int soundNumb, Color colour}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumb);
        },
        color: colour,
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                playButton(soundNumb: 1, colour: Colors.blue),
                playButton(soundNumb: 2, colour: Colors.black),
                playButton(soundNumb: 3, colour: Colors.pink),
                playButton(soundNumb: 4, colour: Colors.purple),
                playButton(soundNumb: 5, colour: Colors.red),
                playButton(soundNumb: 6, colour: Colors.orange),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
