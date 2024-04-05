import 'package:festival_post_maker/models/post_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/global lists/shadow_list.dart';
import '../../../../utils/global variables/variables.dart';

Column postBox(
    {required PostModel postModel, required final VoidCallback toggleState}) {
  return Column(
    children: [
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              selectedTextIndex = null;
              toggleState();
            },
            child: Container(
              alignment: Alignment.center,
              height: screenHeight / 2.5,
              width: screenHeight / 2.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(postModel.imgPath!),
                ),
                color: Colors.white,
                boxShadow: boxShadowList,
              ),

              //container with stack
              child: Container(
                height: screenHeight / 2.5,
                width: screenHeight / 2.5,
                decoration: BoxDecoration(
                  //background color
                  color: postModel.bgColor ?? Colors.transparent,
                ),
                child: Stack(
                  children: [
                    ...List.generate(
                      postModel.textModel!.textObjList.length,
                      (index) => Positioned(
                        top: postModel.textModel!.textObjList[index].top,
                        left: postModel.textModel!.textObjList[index].left,
                        right: postModel.textModel!.textObjList[index].right,
                        child: GestureDetector(
                          onTap: () {
                            selectedTextIndex = index;
                            toggleState();
                          },
                          child: Container(
                            padding: const EdgeInsets.all(3),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2.5,
                                  color: selectedTextIndex == index
                                      ? Colors.teal
                                      : Colors.transparent),
                            ),
                            child: Text(
                              postModel.textModel!.textObjList[index].text!,
                              style: GoogleFonts.getFont(
                                postModel
                                    .textModel!.textObjList[index].fontFamily!,
                                textStyle: TextStyle(
                                  fontSize: postModel
                                      .textModel!.textObjList[index].size,
                                  color: postModel
                                      .textModel!.textObjList[index].color,
                                  fontWeight: postModel
                                      .textModel!.textObjList[index].fontWeight,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
