import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';
import 'package:login_app/src/constants/sizes.dart';

// Light & Dark Elevated Button Themes
class MyElevatedButtonTheme {
  MyElevatedButtonTheme._();

  // Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        foregroundColor: whiteColor,
        backgroundColor: secondaryColor,
        padding: const EdgeInsets.symmetric(vertical: buttonHeight)
    ),
  );

  // Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        foregroundColor: secondaryColor,
        backgroundColor: whiteColor,
        padding: const EdgeInsets.symmetric(vertical: buttonHeight)
    ),
  );

}