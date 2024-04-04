import 'package:festival_post_maker/models/post_model.dart';
import 'package:festival_post_maker/views/screens/template%20view%20screen/template_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//all text themes data
TextTheme textThemes() {
  return TextTheme(
    bodyLarge: GoogleFonts.varelaRound(
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
    bodyMedium: GoogleFonts.varelaRound(
      textStyle: const TextStyle(
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
    displayMedium: GoogleFonts.varta(
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
    labelLarge:  GoogleFonts.varta(
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}



//navigate to template view screen
navigateToTemplateView({required BuildContext context,required PostModel postModel}) {
  Navigator.of(context).push(MaterialPageRoute(builder: (context) => TemplateViewScreen(postModel: postModel,),));
}
