import 'package:festival_post_maker/views/screens/home%20screen/home_screen.dart';
import 'package:festival_post_maker/views/screens/template%20view%20screen/template_view_screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  '/home': (p0) => const HomeScreen(),
  '/template': (p1) => const TemplateViewScreen(),
};
