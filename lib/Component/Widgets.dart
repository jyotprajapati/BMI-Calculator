import 'package:bmi_calculator/Component/Connstant.dart';
import 'package:bmi_calculator/Screens/Result.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Boxx extends StatelessWidget {
  final Color color;
  final Widget cardChild;
  final Function onPressed;

  Boxx({@required this.color, this.cardChild, this.onPressed});

  @override
  Widget build(BuildContext context) {
    print("boxx");
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

Widget gendersStyle(String gender, IconData genderIcon) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        genderIcon,
        size: 80,
        color: Colors.white,
      ),
      SizedBox(height: 15),
      Text(
        gender,
        style: TextStyle(fontSize: 18),
      )
    ],
  );
}

class BottomButton extends StatelessWidget {
  BottomButton({@required this.buttonText, @required this.onPress});
  final String buttonText;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: Center(
          child: Text(buttonText, style: largeButtonStyle),
        ),
        height: 60,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10),
        color: pinkk,
      ),
    );
  }
}
