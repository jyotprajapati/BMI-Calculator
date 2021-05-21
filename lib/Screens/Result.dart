import 'package:bmi_calculator/Component/Connstant.dart';
import 'package:bmi_calculator/Component/Widgets.dart';
import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  String bmi;
  String result;
  String intro;
  Result({@required this.bmi, @required this.result, @required this.intro});
  @override
  _ResultState createState() => _ResultState(bmi, result, intro);
}

class _ResultState extends State<Result> {
  String bmi;
  String result;
  String intro;
  _ResultState(this.bmi, this.result, this.intro);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                child: Text(
                  "Your Result",
                  style: resultTextTextStyle,
                ),
              ),
            ),
          ),
          Expanded(
              flex: 5,
              child: Boxx(
                color: activeColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      result,
                      style: resultTextStyle,
                    ),
                    Text(
                      bmi,
                      style: bmiTextStyle,
                    ),
                    Text(
                      intro,
                      textAlign: TextAlign.center,
                      style: bodyTextStyle,
                    )
                  ],
                ),
              )),
          BottomButton(
              buttonText: "RE - CALCULATE",
              onPress: () {
                Navigator.pop(context);
              })
        ],
      ),
    );
  }
}
