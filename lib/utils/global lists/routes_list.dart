import 'package:festival_post_maker/views/screens/home%20screen/home_screen.dart';
import 'package:festival_post_maker/views/screens/splash%20screen/splash_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/': (p0) => const SplashScreen(),
  '/home': (p1) => const HomeScreen(),
};
