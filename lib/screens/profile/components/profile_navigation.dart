import 'package:flutter/material.dart';
import 'package:money_life/screens/profileEdit/profile_edit.dart';

import 'button_profile.dart';

class ProfileNavigation extends StatelessWidget {
  const ProfileNavigation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonProfile(
          icon: Icons.person,
          press: () {
            Navigator.pushNamed(context, ProfileEditScreen.routeName);
          },
          title: "Profile",
        ),
        ButtonProfile(
          icon: Icons.settings,
          press: () {},
          title: "Settings",
        ),
        ButtonProfile(
          icon: Icons.logout,
          press: () {},
          title: "Log Out",
        )
      ],
    );
  }
}
