import 'package:flutter/material.dart';
import 'package:money_life/components/nav_bar_buttom.dart';
import 'package:money_life/menu_state.dart';
import 'package:money_life/size_config.dart';

import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/HomeScreen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      // extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: NavBarButtom(
        selectedMenu: MenuState.home,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
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
