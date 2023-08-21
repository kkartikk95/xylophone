import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNum){
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNum.wav'));
  }

  Expanded buildKey({required Color color, required int noteNum}){
    return Expanded(
      child: TextButton(
        child: Text(''),
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(noteNum);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.purple, noteNum: 1),
              buildKey(color: Colors.indigo, noteNum: 2),
              buildKey(color: Colors.blue, noteNum: 3),
              buildKey(color: Colors.green, noteNum: 4),
              buildKey(color: Colors.yellow, noteNum: 5),
              buildKey(color: Colors.orange, noteNum: 6),
              buildKey(color: Colors.red, noteNum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
