import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../../../../models/post_model.dart';
import '../../../../models/text_model.dart';
import '../../../../utils/global variables/variables.dart';

class DeleteAddColor extends StatelessWidget {
  const DeleteAddColor({
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
        //delete text icon
        delete(context),

        //add text button
        addText(context),

        //edit text
        editText(context),

        //color picker button
        color(context),
      ],
    );
  }

  color(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: () {
          if (selectedTextIndex != null) {
            // create some values
            Color pickerColor = const Color(0xff443a49);

            void changeColor(Color color) {
              pickerColor = color;
              toggleState();
            }

            showColorPicker(context, pickerColor, changeColor);
            toggleState();
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 22,
              width: 22,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 30,
                    spreadRadius: 0.2,
                  ),
                ],
                color: selectedTextIndex != null
                    ? postModel.textModel!.textObjList[selectedTextIndex!].color
                    : Colors.grey.withOpacity(0.4),
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Color',
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

  editText(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CupertinoButton(
        onPressed: () {
          if(selectedTextIndex != null){
            txtEdit = TextEditingController(text: postModel.textModel!.textObjList[selectedTextIndex!].text);
            showAddTextDialogue(context: context, title: 'Edit Text', controller: txtEdit);
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.edit,
              color: selectedTextIndex != null
                  ? Colors.white
                  : Colors.grey.withOpacity(0.6),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Edit text',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: selectedTextIndex != null
                        ? null
                        : Colors.grey.withOpacity(0.6),
                  ),
            )
          ],
        ),
      ),
    );
  }

  addText(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CupertinoButton(
        onPressed: () {
          selectedTextIndex = null;
          toggleState();
          showAddTextDialogue(context: context, title: 'Add Text', controller: txtAdd);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.add,
              color: Colors.white,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Add text',
              style: Theme.of(context).textTheme.bodyMedium,
            )
          ],
        ),
      ),
    );
  }

  delete(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CupertinoButton(
        onPressed: () {
          if (selectedTextIndex != null) {
            postModel.textModel!.textObjList.removeAt(selectedTextIndex!);
            selectedTextIndex = null;
            toggleState();
          }
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.delete,
              color: selectedTextIndex != null
                  ? Colors.white
                  : Colors.grey.withOpacity(0.6),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              'Delete',
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
