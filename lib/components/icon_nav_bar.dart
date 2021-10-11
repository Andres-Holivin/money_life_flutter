import 'package:flutter/material.dart';

import '../menu_state.dart';

class IconNavBar extends StatelessWidget {
  const IconNavBar({
    Key? key,
    required this.selectedMenu,
    required this.icon,
    required this.title,
    required this.press,
    required this.active,
  }) : super(key: key);

  final MenuState selectedMenu;
  final IconData icon;
  final String title;
  final Function() press;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: press,
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: 60,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: active ? Colors.white : Colors.grey[600],
                  size: 20,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 10,
                    color: active ? Colors.white : Colors.grey[600],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
