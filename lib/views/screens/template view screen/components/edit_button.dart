import 'package:festival_post_maker/models/post_model.dart';
import 'package:festival_post_maker/utils/global%20variables/methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../utils/global variables/colors.dart';
import '../../../../utils/global variables/variables.dart';

Column editTemplateButton({required BuildContext context, required PostModel postModel}) {
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
              navigateToEditTemplate(context: context, postModel: postModel);
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