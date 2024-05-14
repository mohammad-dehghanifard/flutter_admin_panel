import 'package:flutter/material.dart';
import 'package:flutter_admin_panel/core/resources/constants.dart';

class ThemeManager {
  static ThemeData darkTheme(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return ThemeData(
        fontFamily: "shabnam",
        colorScheme: const ColorScheme.dark(
          primary: primaryColor,
          background: darkBgColor,
          secondary: darkSecondaryColor,
        ),
        textTheme:   TextTheme(
            bodyMedium: TextStyle(fontSize: size.height * 0.016),
            bodySmall: TextStyle(fontSize: size.height * 0.012,fontWeight: FontWeight.w300),
            titleMedium: TextStyle(fontSize: size.height * 0.024,fontWeight: FontWeight.w700)
        )
    );
  }
}