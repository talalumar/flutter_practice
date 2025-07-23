import 'package:flutter/material.dart';
import 'package:audioplayers_fix/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'),);
  }

  Expanded buildKey(Color a, int b){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: a,
        ),
        onPressed: (){
          playSound(b);
        }, child: Text(''),
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
              buildKey(Colors.red, 1),
              buildKey(Colors.blue, 2),
              buildKey(Colors.green, 3),
              buildKey(Colors.yellow, 4),
              buildKey(Colors.purple, 5),
              buildKey(Colors.indigo, 6),
              buildKey(Colors.orange, 7),

            ],
          ),
        ),
      ),
    );
  }
}