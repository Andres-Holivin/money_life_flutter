import 'package:flutter/material.dart';
import 'package:money_life/components/text_gesture.dart';
import 'package:money_life/screens/SingIn/components/sing_in_form.dart';
import 'package:money_life/components/sing_options.dart';
import 'package:money_life/screens/singUp/sing_up.dart';
import 'package:money_life/size_config.dart';
import 'header_title.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(15)),
          child: Container(
            height: getProportionateScreenHeight(0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: getProportionateScreenWidth(30),
                  ),
                  HeaderTitle(),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                  SingInForm(),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                  Text(
                    "Or, login with...",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                  SingOptions(),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an Account? ",
                        style: TextStyle(fontSize: 14),
                      ),
                      TextGesture(
                          colorPrimary: Colors.blue,
                          fontSize: 14,
                          press: () {
                            Navigator.pushNamed(
                                context, SingUpScreen.routeName);
                          },
                          text: "Register Now")
                    ],
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
