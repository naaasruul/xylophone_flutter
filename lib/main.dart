import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(xylophoneApp());

class xylophoneApp extends StatelessWidget {
  xylophoneApp({super.key});

  void playSound(int? sound) {
    final player = AudioCache();
    player.loadPath('note$sound.wav');
    print('print note $sound');
  }

  Expanded buildKey({Color? color, int? soundNumber}){
    return Expanded(
      child: ElevatedButton(
          onPressed: () {
            playSound(soundNumber);
          },
          style: ElevatedButton.styleFrom(backgroundColor: color),
          child: Text("")),
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
            children: [
              buildKey(color: Colors.red, soundNumber: 1),
              buildKey(color: Colors.orange, soundNumber: 2),
              buildKey(color: Colors.yellow, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.blue, soundNumber: 6),
              buildKey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        )),
      ),
    );
  }
}
