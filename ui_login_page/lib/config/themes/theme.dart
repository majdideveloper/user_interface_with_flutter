import 'dart:ui';

import 'package:flutter/material.dart';

class AppTheme {
  static Color blueColor = const Color(0xff163f68);
  static ThemeData lightTheme = ThemeData(
    primarySwatch: Colors
        .blue, //👈 this is the primary color that stuff like the AppBar and FloatingActionButton Widget will default to
    backgroundColor: Colors.white,
    buttonTheme: const ButtonThemeData(buttonColor: Colors.blue),
    textTheme: const TextTheme(
      titleMedium: TextStyle(
          color: Colors.black,
          fontSize:
              26), //👈 we will be able to access these in our widgets later
      titleSmall: TextStyle(
        color: Colors.white,
        fontSize: 14,
      ),
    ),
  );
}
