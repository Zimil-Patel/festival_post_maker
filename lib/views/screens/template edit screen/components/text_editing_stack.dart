import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/views/screens/template%20edit%20screen/components/delete_add_color.dart';
import 'package:festival_post_maker/views/screens/template%20edit%20screen/components/text_align_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../models/post_model.dart';
import '../../../../utils/global variables/variables.dart';

class TextEditingStack extends StatelessWidget {
  const TextEditingStack({
    super.key,
    required this.postModel,
    required this.toggleState,
  });

  final PostModel postModel;
  final VoidCallback toggleState;

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
          textEditTabBar(context),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 7.0),
            child: Container(
              height: 96,
              color: secondaryColor,
              child: isTextTab ? DeleteAddColor(postModel: postModel, toggleState: toggleState,) : TextAlignButtons(postModel: postModel, toggleState: toggleState),
            ),
          ),
        ],
      ),
    );
  }

  Row textEditTabBar(BuildContext context) {
    return Row(
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
                      isTextTab = true;
                      toggleState();
                    },
                    child: Text(
                      'Text',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(
                        color: isTextTab ? Colors.amber : null,
                      ),
                    ),
                  ),
                  CupertinoButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      isTextTab = false;
                      toggleState();
                    },
                    child: Text(
                      'Align',
                      style: Theme
                          .of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(
                        color: isTextTab ? null : Colors.amber,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
        child: Icon(
          Icons.close_rounded, size: 16, color: Colors.grey.withOpacity(0.4),),
      ),
    );
  }




}
