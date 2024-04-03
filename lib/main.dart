import 'package:festival_post_maker/utils/global%20lists/routes_list.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const PostMakerApp());
}

class PostMakerApp extends StatelessWidget {
  const PostMakerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
    );
  }
}
