import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../../../../models/post_model.dart';
import '../../../../models/text_model.dart';
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
            double count = postModel.textModel!.textObjList[selectedTextIndex!].top!;
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

              child: Icon(Icons.arrow_drop_up_outlined, size: 30, color: selectedTextIndex != null ? bgColor : Colors.grey.withOpacity(0.4),),
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
            double count = postModel.textModel!.textObjList[selectedTextIndex!].top!;
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

              child: Icon(Icons.arrow_drop_down, size: 30, color: selectedTextIndex != null ? bgColor : Colors.grey.withOpacity(0.4),),
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
            double leftCount = postModel.textModel!.textObjList[selectedTextIndex!].left!;
            double rightCount = postModel.textModel!.textObjList[selectedTextIndex!].right!;
            leftCount -= 4;
            rightCount += 4;
            postModel.textModel!.textObjList[selectedTextIndex!].left = leftCount;
            postModel.textModel!.textObjList[selectedTextIndex!].right = rightCount;
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

              child: Icon(Icons.arrow_left_sharp, size: 30, color: selectedTextIndex != null ? bgColor : Colors.grey.withOpacity(0.4),),
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
            double leftCount = postModel.textModel!.textObjList[selectedTextIndex!].left!;
            double rightCount = postModel.textModel!.textObjList[selectedTextIndex!].right!;
            leftCount += 4;
            rightCount -= 4;
            postModel.textModel!.textObjList[selectedTextIndex!].left = leftCount;
            postModel.textModel!.textObjList[selectedTextIndex!].right = rightCount;
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

              child: Icon(Icons.arrow_right_sharp, size: 30, color: selectedTextIndex != null ? bgColor : Colors.grey.withOpacity(0.4),),
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

  Future<dynamic> showColorPicker(
      BuildContext context, Color pickerColor, void changeColor(Color color)) {
    return showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        elevation: 1,
        backgroundColor: secondaryColor,
        title: Text(
          'Pick a color!',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: pickerColor,
            onColorChanged: changeColor,
          ),
        ),
        actions: <Widget>[
          CupertinoButton(
            padding: EdgeInsets.zero,
            child: Text(
              'Pick',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: Colors.amber),
            ),
            onPressed: () {
              postModel.textModel!.textObjList[selectedTextIndex!].color =
                  pickerColor;
              toggleState();
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  showAddTextDialogue({required BuildContext context, required String title, required TextEditingController controller}) {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: secondaryColor,
          elevation: 1,
          title: Text(
            '$title Text',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                TextField(
                  controller: controller,
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.amber),
              ),
              onPressed: () {

                if(selectedTextIndex != null){
                  postModel.textModel!.textObjList[selectedTextIndex!].text = controller.text;
                } else {
                  TextModel txt = TextModel(
                      text: txtAdd.text,
                      top: 180.0,
                      left: 70.0,
                      size: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Pacifico');
                  postModel.textModel!.textObjList.add(txt);
                  txtAdd = TextEditingController(text: 'Enter Your Text');
                }
                Navigator.of(context).pop();

                toggleState();
              },
            ),
          ],
        );
      },
    );
  }
}
