import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/utils/global%20variables/variables.dart';
import 'package:festival_post_maker/views/screens/home%20screen/components/festival_list_column.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeigth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: FestivalListColumn(),
    );
  }
}
