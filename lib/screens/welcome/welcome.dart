import 'package:flutter/material.dart';
import 'package:money_life/screens/welcome/components/body.dart';
import 'package:money_life/size_config.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "/welcome";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [
              0,
              0.25,
              0.75,
              1,
            ],
                colors: [
              Colors.indigo,
              Colors.black,
              Colors.black,
              Colors.deepPurple,
            ])),
        child: Body(),
      ),
    );
  }
}
