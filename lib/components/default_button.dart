import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton(
      {Key? key,
      required this.primaryColor,
      required this.sideColor,
      required this.text,
      required this.press,
      required this.fontSize})
      : super(key: key);
  final Color primaryColor;
  final Color sideColor;
  final String text;
  final double fontSize;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: fontSize),
        ),
        style: ButtonStyle(
            padding: MaterialStateProperty.all(
                EdgeInsets.only(left: 100, right: 100, top: 15, bottom: 15)),
            backgroundColor: MaterialStateProperty.all(primaryColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: sideColor)))),
      ),
    );
  }
}
