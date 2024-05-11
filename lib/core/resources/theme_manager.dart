import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';

class ThemeManager {
  static ThemeData darkTheme = ThemeData(
    fontFamily: "shabnam",
    colorScheme: const ColorScheme.dark(
      primary: primaryColor,
      background: darkBgColor,
      secondary: darkSecondaryColor,
    ),
    textTheme:  TextTheme(
      bodyMedium: const TextStyle(fontSize: 14),
      bodySmall: TextStyle(fontSize: 12,fontWeight: FontWeight.w300)
    )
  );
}