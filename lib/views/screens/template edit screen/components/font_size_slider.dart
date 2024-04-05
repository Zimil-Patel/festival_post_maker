import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/utils/global%20variables/variables.dart';
import 'package:flutter/material.dart';
import '../../../../models/post_model.dart';

class FontSizeSlider extends StatelessWidget {
  const FontSizeSlider({
    super.key,
    required this.postModel,
    required this.toggleState,
  });

  final PostModel postModel;
  final VoidCallback toggleState;

  @override
  Widget build(BuildContext context) {
    if (selectedTextIndex != null) {
      value = postModel.textModel!.textObjList[selectedTextIndex!].size!;
    } else {
      value = 30;
    }
    return SizedBox(
      width: screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Slider(
            value: value,
            min: 5,
            max: 160,
            thumbColor: selectedTextIndex != null ? bgColor : primaryColor,
            activeColor: selectedTextIndex != null
                ? Colors.amber.shade300
                : primaryColor,
            inactiveColor: primaryColor,
            label: value.toString(),
            onChanged: (updatedValue) {
              value = updatedValue;
              postModel.textModel!.textObjList[selectedTextIndex!].size = value;
              toggleState();
            },
          )
        ],
      ),
    );
  }
}
