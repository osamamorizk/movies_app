import 'package:flutter/material.dart';
import 'package:movies/core/themes/text_theme.dart';

class CustomAppThemes {
  static ThemeData darkTheme = ThemeData(
    textTheme: CustomTextThemes.darkTextTheme,
    scaffoldBackgroundColor: const Color(0xff1C1A29),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: const Color(0xff1C1A29),
      elevation: 2,
      titleTextStyle: CustomTextThemes.darkTextTheme.titleLarge,
    ),
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

  static ThemeData lightTheme = ThemeData(
    textTheme: CustomTextThemes.lightTextTheme,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 2,
      titleTextStyle: CustomTextThemes.darkTextTheme.titleLarge,
    ),
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
}
