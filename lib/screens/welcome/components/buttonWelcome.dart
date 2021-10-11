import 'package:flutter/material.dart';
import 'package:money_life/components/default_button.dart';
import 'package:money_life/screens/SingIn/sing_in.dart';

class ButtonWelcome extends StatelessWidget {
  const ButtonWelcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DefaultButton(
          primaryColor: Colors.transparent,
          sideColor: Color(0xFF424242),
          text: "Continue",
          press: () {
            Navigator.pushNamed(context, LoginScreen.routeName);
          },
          fontSize: 24,
        ),
      ],
    );
  }
}
