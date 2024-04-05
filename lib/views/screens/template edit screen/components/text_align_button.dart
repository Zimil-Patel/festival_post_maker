import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../models/post_model.dart';
import '../../../../utils/global variables/variables.dart';

class TextAlignButtons extends StatelessWidget {
  const TextAlignButtons({
    super.key,
    required this.postModel,
    required this.toggleState,
  });

  final PostModel postModel;
  final VoidCallback toggleState;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //Top
        topArrow(context: context, postModel: postModel),

        //Bottom
        bottomArrow(context: context, postModel: postModel),

        //Left
        leftArrow(context: context, postModel: postModel),

        //Right
        rightArrow(context: context, postModel: postModel),
      ],
    );
  }

  topArrow({required BuildContext context, required PostModel postModel}) {
    return Align(
      alignment: Alignment.center,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          if (selectedTextIndex != null) {
            double count =
                postModel.textModel!.textObjList[selectedTextIndex!].top!;
            count -= 4;
            postModel.textModel!.textObjList[selectedTextIndex!].top = count;
            toggleState();
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: secondaryColor.withOpacity(0.3),
                    blurRadius: 40,
                    spreadRadius: 0.2,
                  ),
                ],
                color: primaryColor.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_drop_up_outlined,
                size: 30,
                color: selectedTextIndex != null
                    ? bgColor
                    : Colors.grey.withOpacity(0.4),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Top',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: selectedTextIndex != null
                        ? null
                        : Colors.grey.withOpacity(0.6),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  bottomArrow({required BuildContext context, required PostModel postModel}) {
    return Align(
      alignment: Alignment.center,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          if (selectedTextIndex != null) {
            double count =
                postModel.textModel!.textObjList[selectedTextIndex!].top!;
            count += 4;
            postModel.textModel!.textObjList[selectedTextIndex!].top = count;
            toggleState();
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: secondaryColor.withOpacity(0.3),
                    blurRadius: 40,
                    spreadRadius: 0.2,
                  ),
                ],
                color: primaryColor.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_drop_down,
                size: 30,
                color: selectedTextIndex != null
                    ? bgColor
                    : Colors.grey.withOpacity(0.4),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Bottom',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: selectedTextIndex != null
                        ? null
                        : Colors.grey.withOpacity(0.6),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  leftArrow({required BuildContext context, required PostModel postModel}) {
    return Align(
      alignment: Alignment.center,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          if (selectedTextIndex != null) {
            double leftCount =
                postModel.textModel!.textObjList[selectedTextIndex!].left!;
            double rightCount =
                postModel.textModel!.textObjList[selectedTextIndex!].right!;
            leftCount -= 4;
            rightCount += 4;
            postModel.textModel!.textObjList[selectedTextIndex!].left =
                leftCount;
            postModel.textModel!.textObjList[selectedTextIndex!].right =
                rightCount;
            toggleState();
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: secondaryColor.withOpacity(0.3),
                    blurRadius: 40,
                    spreadRadius: 0.2,
                  ),
                ],
                color: primaryColor.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_left_sharp,
                size: 30,
                color: selectedTextIndex != null
                    ? bgColor
                    : Colors.grey.withOpacity(0.4),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Left',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: selectedTextIndex != null
                        ? null
                        : Colors.grey.withOpacity(0.6),
                  ),
            ),
          ],
        ),
      ),
    );
  }

  rightArrow({required BuildContext context, required PostModel postModel}) {
    return Align(
      alignment: Alignment.center,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          if (selectedTextIndex != null) {
            double leftCount =
                postModel.textModel!.textObjList[selectedTextIndex!].left!;
            double rightCount =
                postModel.textModel!.textObjList[selectedTextIndex!].right!;
            leftCount += 4;
            rightCount -= 4;
            postModel.textModel!.textObjList[selectedTextIndex!].left =
                leftCount;
            postModel.textModel!.textObjList[selectedTextIndex!].right =
                rightCount;
            toggleState();
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: secondaryColor.withOpacity(0.3),
                    blurRadius: 40,
                    spreadRadius: 0.2,
                  ),
                ],
                color: primaryColor.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.arrow_right_sharp,
                size: 30,
                color: selectedTextIndex != null
                    ? bgColor
                    : Colors.grey.withOpacity(0.4),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Left',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: selectedTextIndex != null
                        ? null
                        : Colors.grey.withOpacity(0.6),
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
