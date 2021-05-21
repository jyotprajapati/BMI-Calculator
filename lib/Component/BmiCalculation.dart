import 'dart:math';

import 'package:flutter/material.dart';

class BmiCalculation {
  int height;
  int weight;
  double bmi;

  BmiCalculation({@required this.height, @required this.weight});
  String bmiCalc() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String bmiResult() {
    if (bmi > 25) {
      return "OverWeight";
    } else if (bmi > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String info() {
    if (bmi > 25) {
      return "Your weight is more than normal. You must Exercise";
    } else if (bmi > 18.5) {
      return "Your weight is normal. Good job!";
    } else {
      return "Your weight is lower than normal. You can eat more";
    }
  }
}
