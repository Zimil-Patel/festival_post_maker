import 'package:festival_post_maker/utils/global%20lists/model_list.dart';
import 'package:flutter/material.dart';

class TextModel {
  String? text, fontFamily;
  double? top, left, right;
  double? size;
  Color? color;
  FontWeight? fontWeight;

  List<TextModel> textObjList = [];

  TextModel({
    this.text,
    this.top,
    this.left,
    this.right,
    this.size,
    this.color,
    this.fontWeight,
    this.fontFamily,
  });

  factory TextModel.setData(Map map) => TextModel(
        text: map['text'],
        top: map['top'],
        left: map['left'],
        right: map['right'],
        size: map['size'],
        color: map['color'],
        fontWeight: map['fontWeight'],
        fontFamily: map['fontFamily'],
      );

  refreshList() {
    textObjList = textList.map((e) => TextModel.setData(e)).toList();
  }

  TextModel copy() => TextModel(
        text: text,
        top: top,
        left: left,
        right: right,
        size: size,
        color: color,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
      );
}
