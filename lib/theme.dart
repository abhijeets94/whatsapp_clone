import 'package:flutter/material.dart';

class CustomTheme {
  ThemeData theme = ThemeData(
    scaffoldBackgroundColor: const Color.fromRGBO(19, 28, 33, 1),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(0, 167, 131, 1),
      ),
    ),
    textTheme: const TextTheme(
      titleLarge: TextStyle(
        color: Colors.white,
        fontSize: 33,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: TextStyle(
        color: Colors.white,
        fontSize: 23,
        fontWeight: FontWeight.w500,
      ),
      titleSmall: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    ),
    appBarTheme:
        const AppBarTheme(color: Color.fromRGBO(31, 44, 52, 1), elevation: 0),
  );
}
