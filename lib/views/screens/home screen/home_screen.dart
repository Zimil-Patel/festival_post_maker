import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/utils/global%20variables/variables.dart';
import 'package:festival_post_maker/views/screens/home%20screen/components/app_bar.dart';
import 'package:festival_post_maker/views/screens/home%20screen/components/festival_list_column.dart';
import 'package:festival_post_maker/views/screens/home%20screen/components/festivals_list_grid.dart';
import 'package:festival_post_maker/views/screens/home%20screen/components/floating_action_button.dart';
import 'package:festival_post_maker/views/screens/home%20screen/components/title_and_toggle_button.dart';
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
    void toggleWidgetState() {
      setState(() {});
    }

    return Scaffold(
      backgroundColor: bgColor,

      //app bar of screen
      appBar: appBar(context: context, togglesState: toggleWidgetState),

      //body of screen
      body: SingleChildScrollView(
        child: Column(
          children: [
            //title and toggle button
            festivalListTitle(context, 'Festival list', toggleWidgetState),

            //festivals lists box
            isListView ? const FestivalListColumn() : const FestivalListGrid(),
          ],
        ),
      ),

      //floating action button
      floatingActionButton:
          floatingActionButton(toggleState: toggleWidgetState),
    );
  }
}
