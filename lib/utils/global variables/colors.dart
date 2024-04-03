import 'package:flutter/material.dart';

Color primaryColor = const Color(0xff222831);
Color secondaryColor = const Color(0xff31363F);
Color bgColor = const Color(0xffEEEEEE);

LinearGradient gradientFromRight = LinearGradient(
  colors: [
    primaryColor.withOpacity(0.8),
    primaryColor,
    primaryColor,
  ],
);

LinearGradient gradientFromLeft = LinearGradient(
  colors: [
    primaryColor,
    primaryColor,
    primaryColor.withOpacity(0.8),
  ],
);
