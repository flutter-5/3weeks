import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultText extends StatelessWidget {
  ResultText(this.bmi);
  double bmi;
  String getResultTExt() {
    if (bmi >= 35) {
      return "Extremely Obeses";
    } else if (bmi >= 30) {
      return "Obeses";
    } else if (bmi >= 25) {
      return "Overweight";
    } else if (bmi >= 18.5) {
      return "Normal";
    } else {
      return "Underweight";
    }
  }

  String getResultRange() {
    if (bmi >= 35) {
      return "=<35";
    } else if (bmi >= 30) {
      return "30-35";
    } else if (bmi >= 25) {
      return "25-30";
    } else if (bmi >= 18.5) {
      return "18.5-25";
    } else {
      return ">18.5";
    }
  }

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
      style: TextStyle(
        fontSize: 18,
        color: Theme.of(context).textTheme.bodyLarge?.color,
      ),
      children: [
        TextSpan(text: 'Result: '),
        TextSpan(
            text: getResultTExt(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Theme.of(context).highlightColor,
            )),
        TextSpan(text: 'Bmi${getResultRange()}'),
      ],
    ));
  }
}
