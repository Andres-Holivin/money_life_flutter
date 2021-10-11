import 'package:flutter/material.dart';
import 'package:money_life/components/profile_picture.dart';
import 'package:money_life/size_config.dart';

import 'profile_navigation.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(35)),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [ProfilePicture(), ProfileNavigation()]),
      ),
    );
  }
}
