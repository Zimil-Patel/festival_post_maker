import 'package:flutter/material.dart';

import '../../models/post_model.dart';

//text lists in post
List textList = [];

//post lists in history
List<PostModel> postList = [
];

Map sampleTextModel = {
  'text': 'This is sample text',
  'top': 180.0,
  'left': 10.0,
  'right': 10.0,
  'size': 30.0,
  'color': Colors.black,
  'fontWeight': FontWeight.w700,
  'fontFamily': 'Pacifico',
};

Map samplePostModel = {
  'festivalName': null,
  'imgPath': null,
  'bgColor': Colors.white,
  'gradient': null,
  'isGradient': false,
  'isColor': true,
  'isImg': false,
  'textModel': null,
};
