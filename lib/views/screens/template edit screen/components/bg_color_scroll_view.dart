import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../../../../models/post_model.dart';

class BackGroundColorScrollView extends StatelessWidget {
  const BackGroundColorScrollView({
    super.key,
    required this.postModel,
    required this.toggleState,
  });

  final PostModel postModel;
  final VoidCallback toggleState;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          //GRADIENT LIST
          ...List.generate(
            10,
            (index) => CupertinoButton(
              onPressed: () {
                postModel.imgPath =
                    'assets/images/gradients/img${index + 1}.png';
                postModel.bgColor = null;
                toggleState();
              },
              padding: EdgeInsets.zero,
              child: Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                        'assets/images/gradients/img${index + 1}.png'),
                  ),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),


          //COLOR PICKER
          CupertinoButton(
            onPressed: () {
              // create some values
              Color pickerColor = const Color(0xff443a49);

              // ValueChanged<Color> callback
              void changeColor(Color color) {
                pickerColor = color;
                toggleState();
              }

              // raise the [showDialog] widget
              showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  elevation: 1,
                  backgroundColor: secondaryColor,
                  title: Text('Pick a color!', style: Theme.of(context).textTheme.displaySmall,),
                  content: SingleChildScrollView(
                    child: ColorPicker(
                      pickerColor: pickerColor,
                      onColorChanged: changeColor,
                    ),
                    // Use Material color picker:
                    //
                    // child: MaterialPicker(
                    //   pickerColor: pickerColor,
                    //   onColorChanged: changeColor,
                    //   // only on portrait mode
                    // ),

                  ),
                  actions: <Widget>[
                    CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: Text('Pick', style: Theme.of(context).textTheme.bodyLarge,),
                      onPressed: () {
                        postModel.bgColor = pickerColor;
                        toggleState();
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              );
              toggleState();
            },
            padding: EdgeInsets.zero,
            child: Container(
              height: 70,
              width: 70,
              margin: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/gradients/img11.png'),
                ),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.edit,color: secondaryColor,),
            ),
          ),
        ],
      ),
    );
  }
}
