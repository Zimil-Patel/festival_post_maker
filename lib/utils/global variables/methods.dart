import 'package:festival_post_maker/utils/global%20variables/variables.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//all text themes data
TextTheme textThemes() {
  return TextTheme(
    bodyLarge: GoogleFonts.varelaRound(
      textStyle:  const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
    bodyMedium: GoogleFonts.varelaRound(
      textStyle:  const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    ),
    titleLarge: GoogleFonts.varelaRound(
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
    displaySmall: GoogleFonts.varta(
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}


//navigate to template view screen
navigateToTemplateView({required BuildContext context}){
  Navigator.of(context).pushNamed('/template');
}
