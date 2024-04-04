import 'dart:ui';

import 'package:festival_post_maker/models/text_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class PostModel {
  String? festivalName, imgPath;
  Color? bgColor;
  TextModel? textModel;

  PostModel({
    this.festivalName,
    this.imgPath,
    this.bgColor,
    this.textModel,
  });

  factory PostModel.setData(Map map) => PostModel(
        festivalName: map['festivalName'],
        imgPath: map['imgPath'],
        bgColor: map['bgColor'],
        textModel: map['textModel'],
      );

  PostModel copy() => PostModel(
        festivalName: festivalName,
        imgPath: imgPath,
        bgColor: bgColor,
        textModel: textModel,
      );
}
