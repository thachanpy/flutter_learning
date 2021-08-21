import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
    Ball()
);

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  final _random = new Random();
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent[100],
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballNumber = 1 + _random.nextInt(5);
                });
              },
              child: Image(
                image: AssetImage("assets/images/ball$ballNumber.png"),
              ),
            ),
          )
        ),
      ),
    );
  }
}

