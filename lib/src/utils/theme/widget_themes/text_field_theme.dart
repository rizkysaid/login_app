import 'package:flutter/material.dart';
import 'package:login_app/src/constants/colors.dart';

class MyTextFormFieldTheme{
  MyTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme =
      const InputDecorationTheme(
        border: OutlineInputBorder(),
        prefixIconColor: secondaryColor,
        floatingLabelStyle: TextStyle(color: secondaryColor),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: secondaryColor,
          ),
        )
      );

   static InputDecorationTheme darkInputDecorationTheme =
        const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: primaryColor,
          floatingLabelStyle: TextStyle(color: primaryColor),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: primaryColor,
            ),
          )
        );


}