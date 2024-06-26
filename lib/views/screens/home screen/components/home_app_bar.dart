//APPBAR

import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/utils/global%20variables/methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar appBar({
  required BuildContext context,
  required final VoidCallback togglesState,
}) {
  return AppBar(
    centerTitle: false,
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
      historyButton(context: context),
    ],
  );
}

//POST HISTORY VIEW BUTTON
CupertinoButton historyButton({required BuildContext context}) {
  return CupertinoButton(
    padding: const EdgeInsets.only(right: 10),
    onPressed: () {
      navigateToHistoryView(context: context);
    },
    child: Icon(
      Icons.history,
      color: bgColor,
    ),
  );
}
