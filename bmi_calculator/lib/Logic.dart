import 'dart:math';
import 'package:flutter/cupertino.dart';

class Calculation {
  Calculation({@required this.heightt, @required this.weightt});

  final int heightt;
  final int weightt;

  double _bmi;

  String formula() {
    _bmi = weightt / pow(heightt / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String resultComment() {
    if (_bmi >= 25) {
      return "Overweight";
    } else if (_bmi > 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return "This is bad, start dieting.You can do it";
    } else if (_bmi > 18.5) {
      return "Nice!! you are healthy.Keep it up ,doing a great job";
    } else {
      return "Not good.You need to eat more healthy food.You can do it";
    }
  }
}
