import 'package:festival_post_maker/utils/global%20lists/text_properties_list.dart';
import 'package:flutter/material.dart';

class TextProperties {
  String? data;
  double? top, bottom, left, right;
  double? size;
  Color? color;
  FontWeight? fontWeight;

  List<TextProperties> textObjList = [];

  TextProperties(
      {this.data,
      this.top,
      this.bottom,
      this.left,
      this.right,
      this.size,
      this.color,
      this.fontWeight});

  factory TextProperties.setData(Map map) => TextProperties(
        data: map['text'],
        top: map['top'],
        bottom: map['bottom'],
        left: map['left'],
        right: map['right'],
        size: map['size'],
        color: map['color'],
        fontWeight: map['fontWeight'],
      );

  refreshList() {
    textObjList = textList.map((e) => TextProperties.setData(e)).toList();
  }
}
