import 'package:flutter/material.dart';
import 'package:money_life/size_config.dart';

import 'icon_text_button.dart';

class SingOptions extends StatelessWidget {
  const SingOptions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconTextButton(
          icon: "assets/icons/icons8-google.svg",
          press: () {},
          text: "Sing with Google",
        ),
        SizedBox(
          height: getProportionateScreenWidth(40),
        ),
        IconTextButton(
          icon: "assets/icons/icons8-facebook.svg",
          press: () {},
          text: "Sing with Google",
        ),
      ],
    );
  }
}
