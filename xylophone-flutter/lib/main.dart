import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int number) {
    final player = AudioCache();
    player.play("note$number.wav");
  }
  Expanded buildKey({Color color, int number}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            primary: color,
            backgroundColor: color
        ),
        onPressed: (){
          playSound(number);
        },
        child: Text("Click me!"),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, number: 1),
                buildKey(color: Colors.yellow, number: 2),
                buildKey(color: Colors.orange, number: 3),
                buildKey(color: Colors.green, number: 4),
                buildKey(color: Colors.blue, number: 5),
                buildKey(color: Colors.indigo, number: 6),
                buildKey(color: Colors.purple, number: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
