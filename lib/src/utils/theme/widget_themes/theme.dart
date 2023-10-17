import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextTheme{
  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: GoogleFonts.montserratAlternates(
          color: Colors.black87,
      ),
      titleMedium: GoogleFonts.poppins(
        color: Colors.black87,
        // fontSize: 24
      )
  );


  static TextTheme darkTextTheme = TextTheme(
      headlineLarge: GoogleFonts.montserratAlternates(
        color: Colors.white70,
      ),
      titleMedium: GoogleFonts.poppins(
        color: Colors.white60,
        // fontSize: 24
      )
  );
}