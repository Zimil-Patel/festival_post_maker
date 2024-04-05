import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../models/post_model.dart';
import '../../../../utils/global variables/variables.dart';
import 'bg_color_scroll_view.dart';
import 'bg_image_scroll_view.dart';

class BackgroundEditStack extends StatelessWidget {
  const BackgroundEditStack({
    super.key,
    required this.toggleState,
    required this.postModel,
  });

  final VoidCallback toggleState;
  final PostModel postModel;

  @override
  Widget build(BuildContext context) {
    return Container(
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
              closeStackButton(),

              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        isImageTab = true;
                        toggleState();
                      },
                      child: Text(
                        'Images',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                          color: isImageTab ? Colors.amber : null,
                        ),
                      ),
                    ),
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        isImageTab = false;
                        toggleState();
                      },
                      child: Text(
                        'Colors',
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                          color: isImageTab ? null : Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0, vertical: 7),
            child: isImageTab ? BackGroundImageScrollView(postModel: postModel, toggleState: toggleState) : BackGroundColorScrollView(postModel: postModel, toggleState: toggleState),
          ),
        ],
      ),
    );
  }

  CupertinoButton closeStackButton() {
    return CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                stackIndex = 0;
                toggleState();
              },
              child: Container(
                margin: const EdgeInsets.only(left: 30),
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: primaryColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.close_rounded, size: 16, color: Colors.grey.withOpacity(0.4),),
              ),
            );
  }
}
