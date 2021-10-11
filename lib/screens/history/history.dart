import 'package:flutter/material.dart';
import 'package:money_life/components/nav_bar_buttom.dart';
import 'package:money_life/menu_state.dart';
import 'package:money_life/screens/history/components/body.dart';

class HistoryScreen extends StatelessWidget {
  static String routeName = "/history_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("History"),
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
