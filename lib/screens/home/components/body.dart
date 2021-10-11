import 'package:flutter/material.dart';
import 'package:money_life/size_config.dart';

import 'cart.dart';
import 'upcoming.dart';
import 'value_card.dart';
import 'header_profile.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(50),
          ),
          HeaderProfile(),
          ValueCard(),
          Cart(),
          Upcoming(),
        ],
      ),
    );
  }
}
