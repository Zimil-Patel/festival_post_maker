import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/views/screens/template%20edit%20screen/components/font_family_list.dart';
import 'package:festival_post_maker/views/screens/template%20edit%20screen/components/font_size_slider.dart';
import 'package:festival_post_maker/views/screens/template%20edit%20screen/components/font_weight_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../models/post_model.dart';
import '../../../../utils/global variables/variables.dart';

class FontStyleEditingStack extends StatelessWidget {
  const FontStyleEditingStack({
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
              child: SizedBox(
                child: IndexedStack(
                  index: fontStackIndex,
                  children: [
                    //STACK 0 - Font family
                    FontFamilyList(
                        postModel: postModel, toggleState: toggleState),

                    //STACK 1 - Font Size
                    FontSizeSlider(
                        postModel: postModel, toggleState: toggleState),

                    //STACK 2 - Font weight
                    FontWeightSlider(
                        postModel: postModel, toggleState: toggleState),
                  ],
                ),
              ),
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
                  fontStackIndex = 0;
                  toggleState();
                },
                child: Text(
                  'Font Family',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: fontStackIndex == 0 ? Colors.amber : null,
                      ),
                ),
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  fontStackIndex = 1;
                  toggleState();
                },
                child: Text(
                  'Font Size',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: fontStackIndex == 1 ? Colors.amber : null,
                      ),
                ),
              ),
              CupertinoButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  fontStackIndex = 2;
                  toggleState();
                },
                child: Text(
                  'Font Weight',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: fontStackIndex == 2 ? Colors.amber : null,
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
          Icons.close_rounded,
          size: 16,
          color: Colors.grey.withOpacity(0.4),
        ),
      ),
    );
  }
}
