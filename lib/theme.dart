import 'package:flutter/material.dart';

ThemeData themeData() {
  return ThemeData(
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: appBarTheme(),
      brightness: Brightness.dark,
      inputDecorationTheme: inputDecorationTheme(),
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColor: Colors.blue);
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
      color: Colors.transparent,
      centerTitle: true,
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
      textTheme: TextTheme(
          headline6: TextStyle(
        fontSize: 22,
        color: Colors.white,
      )));
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.transparent),
    gapPadding: 10,
  );
  return InputDecorationTheme(
      filled: true,
      fillColor: Colors.grey[900],
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: EdgeInsets.symmetric(horizontal: 45, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder);
}
