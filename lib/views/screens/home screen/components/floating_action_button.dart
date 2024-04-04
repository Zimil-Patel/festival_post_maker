//FLOATING ACTION BUTTON
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:flutter/material.dart';

FloatingActionButton floatingActionButton({
  required final VoidCallback toggleState,
}) {
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
