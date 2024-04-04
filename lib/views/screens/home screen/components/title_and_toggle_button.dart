//Festival List Title and toggle button
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/utils/global%20variables/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Column festivalListTitle(
    BuildContext context, String title, final VoidCallback toggleState) {
  return Column(
    children: [
      const SizedBox(
        height: 20,
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '    $title',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: primaryColor,
                    fontSize: screenHeigth / 24,
                    fontWeight: FontWeight.w900,
                  ),
            ),
            Row(
              children: [
                listViewToggleButton(toggleState),
                const SizedBox(
                  width: 20,
                ),
              ],
            )
          ],
        ),
      ),
    ],
  );
}

//LIST AND GRID VIEW TOGGLE BUTTON
CupertinoButton listViewToggleButton(final VoidCallback toggleState) {
  return CupertinoButton(
    padding: const EdgeInsets.only(right: 24),
    onPressed: () {
      isListView = !isListView;
      toggleState();
    },
    child: Icon(
      !isListView ? Icons.line_weight_rounded : Icons.grid_view,
      color: primaryColor,
    ),
  );
}
