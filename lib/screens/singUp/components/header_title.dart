import 'package:flutter/material.dart';
import 'package:money_life/size_config.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome!",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: getProportionateScreenWidth(100),
          ),
          Text(
            "Enter your information to Sing Up.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey[400]),
          )
        ],
      ),
    );
  }
}
