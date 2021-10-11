import 'package:flutter/material.dart';

import 'iconWelcome.dart';
import 'buttonWelcome.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 6,
          child: IconWelcome(),
        ),
        Expanded(
          flex: 4,
          child: ButtonWelcome(),
        )
      ],
    );
  }
}
