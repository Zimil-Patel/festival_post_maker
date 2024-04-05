import 'package:festival_post_maker/views/screens/template%20edit%20screen/components/text_editing_stack.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../models/post_model.dart';
import '../../../../utils/global variables/colors.dart';
import '../../../../utils/global variables/variables.dart';
import 'bg_edit_stack.dart';

class BottomBar extends StatelessWidget {
  final VoidCallback toggleState;
  final PostModel postModel;

  const BottomBar(
      {super.key, required this.toggleState, required this.postModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          //INDEXED STACK
          IndexedStack(
            index: stackIndex,
            children: [
              //STACK 0 - EMPTY
              Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
              ),

              //STACK 1 - BACKGROUND
              BackgroundEditStack(toggleState: toggleState, postModel: postModel),


              //STACK 2 - TEXT
              TextEditingStack(toggleState: toggleState, postModel: postModel),
            ],
          ),

          //BOTTOM NAVIGATOR BAR
          Container(
            height: screenHeight / 8.5,
            width: screenWidth,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              border: const Border.symmetric(horizontal: BorderSide(width: 0.1, color: Colors.white)),
              color: secondaryColor,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 3,
                  blurRadius: 30,
                )
              ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //BACKGROUND
                backgroundBtn(context),

                //TEXT
                textEditBtn(context),

                //FONT FAMILY
                fontBtn(context),

                //SHARE
                shareBtn(context),

                //Download
                saveBtn(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  CupertinoButton saveBtn(BuildContext context) {
    return CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.save_alt_outlined,
                      color: bgColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Save',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              );
  }

  CupertinoButton shareBtn(BuildContext context) {
    return CupertinoButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.ios_share_rounded,
                      color: bgColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Share',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              );
  }

  CupertinoButton fontBtn(BuildContext context) {
    return CupertinoButton(
                onPressed: () {
                  if(stackIndex != 3){
                    stackIndex = 3;
                  } else {
                    stackIndex = 0;
                  }
                  toggleState();
                },
                padding: EdgeInsets.zero,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.font_download,
                      color: bgColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Font',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              );
  }

  CupertinoButton textEditBtn(BuildContext context) {
    return CupertinoButton(
                onPressed: () {
                  if(stackIndex != 2){
                    stackIndex = 2;
                  } else {
                    stackIndex = 0;
                  }
                  toggleState();
                },
                padding: EdgeInsets.zero,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.text_fields_rounded,
                      color: bgColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Text',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              );
  }

  CupertinoButton backgroundBtn(BuildContext context) {
    return CupertinoButton(
                onPressed: () {
                  if(stackIndex != 1){
                    stackIndex = 1;
                  } else {
                    stackIndex = 0;
                  }
                  toggleState();
                },
                padding: EdgeInsets.zero,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.now_wallpaper_rounded,
                      color: bgColor,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      'Background',
                      style: Theme.of(context).textTheme.bodyMedium,
                    )
                  ],
                ),
              );
  }
}


