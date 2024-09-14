import 'package:flutter/material.dart';

class AppThemes {
  static final Color _lightPrimaryColor = Colors.blue;
  static final Color _lightAccentColor = Colors.green;
  static final Color _lightBackgroundColor = Colors.white;

  static final Color _darkPrimaryColor = Colors.blueGrey;
  static final Color _darkAccentColor = Colors.teal;
  static final Color _darkBackgroundColor = Colors.black;

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: _lightPrimaryColor,
    hintColor: _lightAccentColor,
    scaffoldBackgroundColor: _lightBackgroundColor,
    appBarTheme: AppBarTheme(
      color: _lightPrimaryColor,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: _darkPrimaryColor,
    hintColor: _darkAccentColor,
    scaffoldBackgroundColor: _darkBackgroundColor,
    appBarTheme: AppBarTheme(
      color: _darkPrimaryColor,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
    ),
  );
}
