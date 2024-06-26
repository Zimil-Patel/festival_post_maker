import 'package:festival_post_maker/models/post_model.dart';
import 'package:flutter/material.dart';

import '../../../../utils/global lists/shadow_list.dart';
import '../../../../utils/global variables/variables.dart';

Column templateViewBox({required PostModel postModel}) {
  return Column(
    children: [
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: screenHeight / 2.5,
            width: screenHeight / 2.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                  image: AssetImage(postModel.imgPath!),),
              color: Colors.white,
              boxShadow: boxShadowList,
            ),
            child: Container(
              height: screenHeight / 2.5,
              width: screenHeight / 2.5,
              decoration: BoxDecoration(
                color: postModel.bgColor ?? Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    ],
  );
}