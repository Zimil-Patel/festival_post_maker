//FLOATING ACTION BUTTON
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:flutter/material.dart';

import '../../../../models/post_model.dart';
import '../../../../models/text_model.dart';
import '../../../../utils/global lists/model_list.dart';
import '../../../../utils/global variables/variables.dart';
import '../../template view screen/template_view_screen.dart';

FloatingActionButton floatingActionButton({
  required final VoidCallback toggleState,
  required BuildContext context,
}) {
  return FloatingActionButton(
    onPressed: () {
      isBlankTemplate = true;
      //new text model object
      TextModel textModel = TextModel();
      textModel.refreshList();

      //new post model object
      PostModel postModel = PostModel(
          festivalName: null,
          bgColor: Colors.white,
          imgPath: 'assets/images/predefined/img1.png',
          textModel: textModel);

      //clear global text list
      textList.clear();
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => TemplateViewScreen(
          postModel: postModel,
        ),
      ));
    },
    backgroundColor: secondaryColor,
    shape: const CircleBorder(),
    child: Icon(
      Icons.add,
      color: bgColor,
    ),
  );
}
