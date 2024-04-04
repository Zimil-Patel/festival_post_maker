import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/global variables/colors.dart';
import '../../../../utils/global variables/variables.dart';

Column editTemplateButton({required BuildContext context}) {
  return Column(
    children: [
      const SizedBox(
        height: 40,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {

            },
            child: Container(
              height: screenHeight / 16,
              width: screenHeight / 4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Edit Template', style: Theme.of(context).textTheme.bodyLarge,),
                  Icon(Icons.edit, color: Colors.white, size: screenHeight / 42,)
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}