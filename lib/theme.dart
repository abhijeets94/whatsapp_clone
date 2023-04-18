import 'package:flutter/material.dart';

class CustomTheme {
  ThemeData theme = ThemeData(
    scaffoldBackgroundColor: const Color.fromRGBO(19, 28, 33, 1),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: const Color.fromRGBO(0, 167, 131, 1),
      ),
    ),
    textTheme: const TextTheme(
      headline1: TextStyle(
        color: Colors.white,
        fontSize: 33,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
