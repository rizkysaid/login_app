import 'package:flutter/material.dart';
import 'package:login_app/src/utils/theme/widget_themes/theme.dart';

class MyAppTheme{

  MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
    useMaterial3: true,
    brightness: Brightness.light,
    textTheme: MyTextTheme.lightTextTheme
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true,
      textTheme: MyTextTheme.darkTextTheme
  );
}