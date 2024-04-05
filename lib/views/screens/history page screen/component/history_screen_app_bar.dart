//APPBAR
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar historyAppBar({
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
    leading: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/home');
        },
        child: Icon(
          Icons.arrow_back,
          color: bgColor,
        )),
    title: Text(
      'History',
      style: Theme.of(context).textTheme.titleLarge,
    ),
  );
}
