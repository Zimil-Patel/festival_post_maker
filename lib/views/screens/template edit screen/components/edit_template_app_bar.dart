//APPBAR
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppBar editTemplateAppBar({
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
        child: Icon(Icons.close, color: bgColor,)),
    title: Text(
      'Post Maker',
      style: Theme.of(context).textTheme.titleLarge,
    ),
    actions: [
      downloadButton(context: context),
    ],
  );
}

//POST HISTORY VIEW BUTTON
CupertinoButton downloadButton({required BuildContext context}) {
  return CupertinoButton(
    padding: const EdgeInsets.only(right: 10),
    onPressed: () {},
    child: Row(
      children: [
        Text('Save', style: Theme.of(context).textTheme.bodyLarge,),
        const SizedBox(
          width: 8,
        ),
        Icon(
          Icons.save,
          size: 22,
          color: bgColor,
        ),
      ],
    ),
  );
}
