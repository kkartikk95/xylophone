import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNum){
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNum.wav'));
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
              Expanded(
                child: TextButton(
                  child: Text(''),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.purple,
                  ),
                  onPressed: () {
                   playSound(1);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text(''),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.indigo,
                  ),
                  onPressed: () {
                    playSound(2);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text(''),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    playSound(3);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text(''),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () {
                    playSound(4);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text(''),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  onPressed: () {
                    playSound(5);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text(''),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.orange,
                  ),
                  onPressed: () {
                    playSound(6);
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text(''),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    playSound(7);
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
