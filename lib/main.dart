import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();

  Widget buildKey({int noteNum, Color keyColor}) {
    return Expanded(
      child: FlatButton(
          color: keyColor,
          onPressed: () => player.play('note$noteNum.wav'),
          child: Container()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(noteNum: 1, keyColor: Colors.red),
                buildKey(noteNum: 2, keyColor: Colors.orange),
                buildKey(noteNum: 3, keyColor: Colors.yellow),
                buildKey(noteNum: 4, keyColor: Colors.green),
                buildKey(noteNum: 5, keyColor: Colors.teal),
                buildKey(noteNum: 6, keyColor: Colors.blue),
                buildKey(noteNum: 7, keyColor: Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
