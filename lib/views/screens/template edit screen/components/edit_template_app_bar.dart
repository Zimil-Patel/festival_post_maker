//APPBAR

import 'package:festival_post_maker/utils/global%20lists/model_list.dart';
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
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
          isFromHistory = false;
          isBlankTemplate = false;
          Navigator.pushReplacementNamed(context, '/home');
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
      downloadButton(context: context, postModel: postModel, toggleState: togglesState),
    ],
  );
}

//POST HISTORY VIEW BUTTON
Row downloadButton({required BuildContext context, required PostModel postModel, required VoidCallback toggleState}) {
  return Row(
    children: [
      CupertinoButton(
          onPressed: () {
            postModel.imgPath = isBlankTemplate ? 'assets/images/predefined/img1.png' : 'assets/images/festivals/${(postModel.festivalName)!.toLowerCase()}/img1.png';
            postModel.bgColor = isBlankTemplate ? Colors.white : null;
            postModel.textModel!.textObjList.clear();
            toggleState();
          },
          padding: EdgeInsets.zero,
          child: Text(
            'Reset',
            style: Theme.of(context).textTheme.bodyLarge,
          ),),
      const SizedBox(
        width: 8,
      ),
      CupertinoButton(
        onPressed: () {
          if(isFromHistory){
            postList[postIndex] = postModel;
            print("Updated! at $postIndex");
          } else {
            postList.add(postModel);
            postIndex = postList.length - 1;
            isFromHistory = true;
            print('Saved at $postIndex');
          }
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
