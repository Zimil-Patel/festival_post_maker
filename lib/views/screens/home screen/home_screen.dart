import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/utils/global%20variables/variables.dart';
import 'package:festival_post_maker/views/screens/home%20screen/components/festival_list_column.dart';
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

    return Scaffold(
      backgroundColor: bgColor,

      //app bar of screen
      appBar: appBar(context),

      //body of screen
      body: const FestivalListColumn(),

      //floating action button
      floatingActionButton: floatingActionButton(),
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
        listViewToggleButton(),
      ],
    );
  }

  //LIST AND GRID VIEW TOGGLE BUTTON
  CupertinoButton listViewToggleButton() {
    return CupertinoButton(
      padding: const EdgeInsets.only(right: 24),
      onPressed: () {
        setState(() {
          isListView = !isListView;
        });
      },
      child: Icon(
        !isListView ? Icons.line_weight_rounded : Icons.grid_view,
        color: bgColor,
      ),
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

  //FLOATING ACTION BUTTON
  FloatingActionButton floatingActionButton() {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: secondaryColor,
      shape: const CircleBorder(),
      child: Icon(
        Icons.add,
        color: bgColor,
      ),
    );
  }
}
