//APPBAR

import 'package:festival_post_maker/utils/global%20lists/model_list.dart';
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/utils/global%20variables/methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../models/post_model.dart';
import '../../../../utils/global variables/variables.dart';

AppBar editTemplateAppBar({
  required BuildContext context,
  required final VoidCallback togglesState,
  required PostModel postModel,
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
          showAlterDailogue(
              context: context,
              postModel: postModel,
              toggleState: togglesState);
        },
        child: Icon(
          Icons.close,
          color: bgColor,
        )),
    title: Text(
      'Post Maker',
      style: Theme.of(context).textTheme.titleLarge,
    ),
    actions: [
      restAndSaveButton(
          context: context, postModel: postModel, toggleState: togglesState),
    ],
  );
}

void showAlterDailogue(
    {required BuildContext context,
    required PostModel postModel,
    required final VoidCallback toggleState}) {
  showDialog(
    context: context, barrierDismissible: true, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: secondaryColor,
        elevation: 1,
        title: Text(
          'Alert?',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Do you want to exit?',
              style: Theme.of(context).textTheme.bodyLarge,
            )
          ],
        ),
        actions: <Widget>[
          TextButton(
              child: Text(
                'No',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.amber),
              ),
              onPressed: () {
                Navigator.pop(context);
              }),
          TextButton(
              child: Text(
                'Yes',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.amber),
              ),
              onPressed: () {
                const snackBar = SnackBar(
                  duration: Duration(seconds: 1),
                  content: Text('Saved!'),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);

                if (isFromHistory) {
                  isFromHistory = false;
                  postList[postIndex] = postModel;
                  navigateToHistoryView(context: context);
                } else {
                  postList.add(postModel);
                  postIndex = postList.length - 1;
                  Navigator.pushReplacementNamed(context, '/home');
                }
              }),
        ],
      );
    },
  );
}

//POST download button
Row restAndSaveButton(
    {required BuildContext context,
    required PostModel postModel,
    required VoidCallback toggleState}) {
  return Row(
    children: [
      CupertinoButton(
        onPressed: () {
          selectedTextIndex = null;
          postModel.imgPath = isBlankTemplate
              ? 'assets/images/predefined/img1.png'
              : 'assets/images/festivals/${(postModel.festivalName)!.toLowerCase()}/img1.png';
          postModel.bgColor = isBlankTemplate ? Colors.white : null;
          postModel.textModel!.textObjList.clear();
          toggleState();
        },
        padding: EdgeInsets.zero,
        child: Text(
          'Reset',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
      const SizedBox(
        width: 8,
      ),
      CupertinoButton(
        onPressed: () {
          if (isFromHistory) {
            postList[postIndex] = postModel;
          } else {
            postList.add(postModel);
            postIndex = postList.length - 1;
            isFromHistory = true;
          }

          const snackBar = SnackBar(
            duration: Duration(seconds: 1),
            content: Text('Saved!'),
          );

          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        padding: EdgeInsets.zero,
        child: Icon(
          Icons.save,
          size: 22,
          color: bgColor,
        ),
      ),
    ],
  );
}
