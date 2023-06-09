import 'package:fashionhub/constants.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final double buttonHeight;
  final double buttonWidth;
  final String buttonText;
  final double buttonBorder;
  final double textSize;

  const MyButton(
      {super.key,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.buttonBorder,
      required this.textSize,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(buttonBorder),
      elevation: 5,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(buttonBorder),
          gradient: myGradient
        ),
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(
              color: Colors.white, fontSize: textSize, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}


class MyButton2 extends StatelessWidget {
  final double buttonHeight;
  final double buttonWidth;
  final String buttonText;
  final double buttonBorder;
  final double textSize;

  const MyButton2(
      {super.key,
      required this.buttonHeight,
      required this.buttonWidth,
      required this.buttonBorder,
      required this.textSize,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(buttonBorder),
      elevation: 0,
      child: Container(
        height: buttonHeight,
        width: buttonWidth,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(buttonBorder),
          color: const Color.fromRGBO(243, 243, 243, 1),
        ),
        child: Center(
            child: Text(
          buttonText,
          style: TextStyle(
              color: const Color.fromRGBO(133, 133, 133, 1), fontSize: textSize, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }
}

