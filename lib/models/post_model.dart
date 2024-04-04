
import 'package:festival_post_maker/models/text_model.dart';
import 'package:flutter/cupertino.dart';

import '../utils/global lists/model_list.dart';

class PostModel {
  String? festivalName, imgPath;
  Color? bgColor;
  Gradient? gradient;
  TextModel? textModel;
  List<PostModel> postObjList = [];

  PostModel({
    this.festivalName,
    this.imgPath,
    this.bgColor,
    this.gradient,
    this.textModel,
  });

  factory PostModel.setData(Map map) => PostModel(
        festivalName: map['festivalName'],
        imgPath: map['imgPath'],
        bgColor: map['bgColor'],
        gradient: map['gradient'],
        textModel: map['textModel'],
  );

  refreshList() {
    postObjList = postList.map((e) => PostModel.setData(e)).toList();
  }
}
