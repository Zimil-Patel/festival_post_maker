import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/views/screens/history%20page%20screen/component/history_post_list.dart';
import 'package:festival_post_maker/views/screens/history%20page%20screen/component/history_screen_app_bar.dart';
import 'package:festival_post_maker/views/screens/history%20page%20screen/component/recents_title.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  TextScaler? textSize;
  @override
  Widget build(BuildContext context) {
    textSize = MediaQuery.of(context).textScaler;

    void toggleWidgetState() {
      setState(() {});
    }

    return Scaffold(
      backgroundColor: bgColor,
      //APP BAR
      appBar: historyAppBar(context: context, togglesState: toggleWidgetState),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                //title
                recents(context, 'Recents Post'),

                //festivals lists box
                PostHistoryList(
                  togglState: toggleWidgetState,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
