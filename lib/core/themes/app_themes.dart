import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.white),
    bodySmall: TextStyle(color: Colors.white),
    bodyLarge: TextStyle(color: Colors.white),
  ),
  scaffoldBackgroundColor: const Color(0xff1C1A29),
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    unselectedIconTheme: IconThemeData(
      color: Color(0xff8C8B97),
      size: 28,
    ),
    selectedIconTheme: IconThemeData(size: 30, color: Color(0xffE82626)),
    backgroundColor: Color(0xff38354B),
  ),
);

ThemeData lightTheme = ThemeData(
  textTheme: const TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
    bodySmall: TextStyle(color: Colors.black),
    bodyLarge: TextStyle(color: Colors.black),
  ),
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    unselectedIconTheme: IconThemeData(
      color: Color(0xff8C8B97),
      size: 28,
    ),
    selectedIconTheme: IconThemeData(size: 30, color: Color(0xffE82626)),
    backgroundColor: Color(0xff38354B),
  ),
);
