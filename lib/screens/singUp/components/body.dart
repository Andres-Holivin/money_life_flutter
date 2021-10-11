import 'package:flutter/material.dart';
import 'package:money_life/components/sing_options.dart';
import 'package:money_life/screens/singUp/components/sing_up_form.dart';
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
                  SingUpForm(),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                  Text(
                    "Or, Sing Up with...",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                  SizedBox(
                    height: getProportionateScreenWidth(20),
                  ),
                  SingOptions(),
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
