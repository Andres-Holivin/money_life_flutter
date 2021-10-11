import 'package:flutter/material.dart';

class TextGesture extends StatelessWidget {
  const TextGesture(
      {Key? key,
      required this.colorPrimary,
      required this.fontSize,
      required this.press,
      required this.text})
      : super(key: key);
  final Color colorPrimary;
  final double fontSize;
  final Function() press;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fontSize,
          color: colorPrimary,
        ),
      ),
    );
  }
}
