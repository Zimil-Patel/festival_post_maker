import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/utils/global%20variables/variables.dart';
import 'package:festival_post_maker/views/screens/home%20screen/components/festival_list_column.dart';
import 'package:festival_post_maker/views/screens/home%20screen/components/floating_action_button.dart';
import 'package:festival_post_maker/views/screens/home%20screen/components/title_and_toggle_button.dart';
import 'package:flutter/cupertino.dart';
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
      appBar: appBar(context),

      //body of screen
      body: SingleChildScrollView(
        child: Column(
          children: [
            festivalListTitle(context, 'Festival list', toggleWidgetState),
            const FestivalListColumn(),
          ],
        ),
      ),

      //floating action button
      floatingActionButton:
          floatingActionButton(toggleState: toggleWidgetState),
    );
  }

  //APPBAR
  AppBar appBar(BuildContext context) {
    return AppBar(
      backgroundColor: secondaryColor,
      surfaceTintColor: bgColor,
      foregroundColor: bgColor,
      elevation: 0,
      scrolledUnderElevation: 0,
      shadowColor: Colors.black.withOpacity(0.5),
      leading: const Icon(Icons.filter_list_rounded),
      title: Text(
        'Festival Post Maker',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      actions: [
        historyButton(),
      ],
    );
  }

  //POST HISTORY VIEW BUTTON
  CupertinoButton historyButton() {
    return CupertinoButton(
      padding: const EdgeInsets.only(right: 10),
      onPressed: () {},
      child: Icon(
        Icons.history,
        color: bgColor,
      ),
    );
  }
}
