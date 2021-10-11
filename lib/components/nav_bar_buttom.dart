import 'package:flutter/material.dart';
import 'package:money_life/menu_state.dart';
import 'package:money_life/screens/history/history.dart';
import 'package:money_life/screens/home/home.dart';
import 'package:money_life/screens/profile/profile.dart';

import 'icon_nav_bar.dart';

class NavBarButtom extends StatelessWidget {
  final MenuState selectedMenu;
  const NavBarButtom({Key? key, required this.selectedMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconNavBar(
            selectedMenu: selectedMenu,
            icon: MenuState.home == selectedMenu
                ? Icons.home
                : Icons.home_outlined,
            press: () {
              MenuState.home != selectedMenu
                  ? Navigator.pushReplacementNamed(
                      context, HomeScreen.routeName)
                  : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Sending Message"),
                    ));
            },
            title: "Home",
            active: MenuState.home == selectedMenu ? true : false,
          ),
          IconNavBar(
            selectedMenu: selectedMenu,
            icon: MenuState.invest == selectedMenu
                ? Icons.monetization_on
                : Icons.monetization_on_outlined,
            press: () {},
            title: "Invest",
            active: MenuState.invest == selectedMenu ? true : false,
          ),
          IconNavBar(
            selectedMenu: selectedMenu,
            icon: MenuState.add == selectedMenu
                ? Icons.add_box_rounded
                : Icons.add_box_outlined,
            press: () {},
            title: "Add",
            active: MenuState.add == selectedMenu ? true : false,
          ),
          IconNavBar(
            selectedMenu: selectedMenu,
            icon: MenuState.history == selectedMenu
                ? Icons.history
                : Icons.history_outlined,
            press: () {
              MenuState.history != selectedMenu
                  ? Navigator.pushReplacementNamed(
                      context, HistoryScreen.routeName)
                  : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Sending Message"),
                    ));
            },
            title: "History",
            active: MenuState.history == selectedMenu ? true : false,
          ),
          IconNavBar(
            selectedMenu: selectedMenu,
            icon: MenuState.profile == selectedMenu
                ? Icons.person
                : Icons.person_outline,
            press: () {
              MenuState.profile != selectedMenu
                  ? Navigator.pushReplacementNamed(
                      context, ProfileScreen.routeName)
                  : ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Sending Message"),
                    ));
            },
            title: "Profile",
            active: MenuState.profile == selectedMenu ? true : false,
          ),
        ],
      ),
    );
  }
}
