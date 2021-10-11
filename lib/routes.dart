import 'package:flutter/widgets.dart';
import 'package:money_life/screens/history/history.dart';
import 'package:money_life/screens/home/home.dart';
import 'package:money_life/screens/profile/profile.dart';
import 'package:money_life/screens/profileEdit/profile_edit.dart';
import 'package:money_life/screens/singUp/sing_up.dart';
import 'package:money_life/screens/welcome/welcome.dart';

import 'screens/SingIn/sing_in.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  SingUpScreen.routeName: (context) => SingUpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  ProfileEditScreen.routeName: (context) => ProfileEditScreen(),
  HistoryScreen.routeName: (context) => HistoryScreen()
};
