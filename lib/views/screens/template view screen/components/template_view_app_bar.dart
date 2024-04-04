//APPBAR
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar templateAppBar({
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
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back, color: bgColor,)),
    title: Text(
      'Template',
      style: Theme.of(context).textTheme.titleLarge,
    ),
    actions: [
      downloadButton(),
    ],
  );
}

//POST HISTORY VIEW BUTTON
CupertinoButton downloadButton() {
  return CupertinoButton(
    padding: const EdgeInsets.only(right: 10),
    onPressed: () {},
    child: Icon(
      Icons.save_alt_rounded,
      color: bgColor,
    ),
  );
}
