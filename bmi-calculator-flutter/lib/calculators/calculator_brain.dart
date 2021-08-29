import 'dart:math';

import 'package:flutter/cupertino.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.height, @required this.weight});

  final int height;
  final int weight;

  double _bmi;
  String calculateBMI() {

    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  Map<String, String> getBMITexts() {
    if (_bmi >= 25) {
      return {
        "result": "Overweight",
        "interpretation": "You have a higher than normal body weight. Try to exercise more.",
      };
    } else if (_bmi > 18.5) {
      return {
        "result": "Normal",
        "interpretation": "You have a normal body weight. Good job!",
      };
    } else {
      return {
        "result": "Underweight",
        "interpretation": "You have a lower than normal body weight. You can eat a bit more.",
      };
    }
  }
}