//Festival List Title and toggle button
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:flutter/material.dart';

Column recents(BuildContext context, String title) {
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
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                    color: primaryColor,
                    fontWeight: FontWeight.w900,
                  ),
            ),
            Row(
              children: [
                recentIcon(),
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
recentIcon() {
  return Icon(
    size: 28,
    Icons.history_rounded,
    color: primaryColor,
  );
}
