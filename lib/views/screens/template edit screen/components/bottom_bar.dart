import 'package:festival_post_maker/views/screens/template%20edit%20screen/components/bg_color_scroll_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../models/post_model.dart';
import '../../../../utils/global variables/colors.dart';
import '../../../../utils/global variables/variables.dart';
import 'bg_image_scroll_view.dart';

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
              Container(
                width: screenWidth,
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            isImageList = true;
                            toggleState();
                          },
                          child: Text(
                            'Images',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: isImageList ? Colors.amber : null,
                                ),
                          ),
                        ),
                        CupertinoButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            isImageList = false;
                            toggleState();
                          },
                          child: Text(
                            'Colors',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: isImageList ? null : Colors.amber,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7.0),
                      child: isImageList ? BackGroundImageScrollView(postModel: postModel, toggleState: toggleState) : BackGroundColorScrollView(postModel: postModel, toggleState: toggleState),
                    ),
                  ],
                ),
              ),
            ],
          ),

          //BOTTOM NAVIGATOR BAR
          Container(
            height: screenHeight / 8,
            width: screenWidth,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              color: secondaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //BACKGROUND
                CupertinoButton(
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
                ),

                //TEXT
                CupertinoButton(
                  onPressed: () {},
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
                ),

                //FONT FAMILY
                CupertinoButton(
                  onPressed: () {},
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
                ),

                //SHARE
                CupertinoButton(
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
                ),

                //Download
                CupertinoButton(
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

