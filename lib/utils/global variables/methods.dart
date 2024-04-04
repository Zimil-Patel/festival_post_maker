import 'package:festival_post_maker/utils/global%20variables/variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//all text themes data
TextTheme textThemes() {
  return TextTheme(
    bodyLarge: GoogleFonts.varelaRound(
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
    bodyMedium: GoogleFonts.varelaRound(
      textStyle: const TextStyle(
        fontSize: 12,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    ),
    titleLarge: GoogleFonts.varelaRound(
      textStyle: TextStyle(
        fontSize: screenHeigth / 34,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
    displayLarge: GoogleFonts.varta(
      textStyle: TextStyle(
        fontSize: screenHeigth / 25,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
