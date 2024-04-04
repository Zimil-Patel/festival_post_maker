import 'package:festival_post_maker/models/post_model.dart';
import 'package:festival_post_maker/views/screens/template%20edit%20screen/template_edit_screen.dart';
import 'package:festival_post_maker/views/screens/template%20view%20screen/template_view_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/text_model.dart';
import '../global lists/festivals_list.dart';
import '../global lists/images_paths_list.dart';
import '../global lists/model_list.dart';

//all text themes data
TextTheme textThemes() {
  return TextTheme(
    bodyLarge: GoogleFonts.varelaRound(
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
    bodyMedium: GoogleFonts.varelaRound(
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w400,
      ),
    ),
    titleLarge: GoogleFonts.varelaRound(
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
    displaySmall: GoogleFonts.varta(
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
    displayMedium: GoogleFonts.varta(
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
    labelLarge:  GoogleFonts.varta(
      textStyle: const TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}



//navigate to template view screen
navigateToTemplateView({required BuildContext context,required int index}) {
  textList.add(sampleTextModel);

  //new text model object
  TextModel textModel = TextModel();
  textModel.refreshList();

  //new post model object
  PostModel postModel = PostModel(
      festivalName: festivalsList[index],
      bgColor: null,
      imgPath: '${imagePathList[index]}img1.png',
      textModel: textModel);

  //clear global text list
  textList.clear();
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TemplateViewScreen(postModel: postModel,),));
}



//navigate to template view screen
navigateToEditTemplate({required BuildContext context,required PostModel postModel}) {
  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => TemplateEditScreen(postModel: postModel,),));
}
