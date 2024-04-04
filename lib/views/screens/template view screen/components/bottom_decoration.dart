import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/global variables/colors.dart';

Column bottomDecoration({TextScaler? textSize}) {
  return Column(
    children: [
      Text(
        'Festivals',
        style: GoogleFonts.caveat(
          textStyle: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.w900,
            fontSize: textSize!.scale(50),
          ),
        ),
      ),Text(
        'Create Your Template With Us',
        style: GoogleFonts.caveat(
          textStyle: TextStyle(
            fontWeight: FontWeight.w900,
            color: primaryColor,
            fontSize: textSize.scale(26),
          ),
        ),
      ),
    ],
  );
}