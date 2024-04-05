import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/utils/global%20variables/variables.dart';
import 'package:flutter/material.dart';
import '../../../../models/post_model.dart';

class FontWeightSlider extends StatelessWidget {
  const FontWeightSlider({
    super.key,
    required this.postModel,
    required this.toggleState,
  });

  final PostModel postModel;
  final VoidCallback toggleState;

  @override
  Widget build(BuildContext context) {
    if (selectedTextIndex != null) {
      weightValue = getFontWeightValue();
    }
    return SizedBox(
      width: screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Slider(
            value: weightValue,
            min: 100,
            max: 900,
            divisions: 100,
            thumbColor: selectedTextIndex != null ? bgColor : primaryColor,
            activeColor: selectedTextIndex != null
                ? Colors.amber.shade300
                : primaryColor,
            inactiveColor: primaryColor,
            label: weightValue.toString(),
            onChanged: (updatedValue) {
              weightValue = updatedValue;
              postModel.textModel!.textObjList[selectedTextIndex!].fontWeight =
                  setFontWeight(updatedValue);
              toggleState();
            },
          )
        ],
      ),
    );
  }

  double getFontWeightValue() {
    if (postModel.textModel!.textObjList[selectedTextIndex!].fontWeight ==
        FontWeight.w100) {
      return 100;
    } else if (postModel
            .textModel!.textObjList[selectedTextIndex!].fontWeight ==
        FontWeight.w200) {
      return 200;
    } else if (postModel
            .textModel!.textObjList[selectedTextIndex!].fontWeight ==
        FontWeight.w300) {
      return 300;
    } else if (postModel
            .textModel!.textObjList[selectedTextIndex!].fontWeight ==
        FontWeight.w400) {
      return 400;
    } else if (postModel
            .textModel!.textObjList[selectedTextIndex!].fontWeight ==
        FontWeight.w500) {
      return 500;
    } else if (postModel
            .textModel!.textObjList[selectedTextIndex!].fontWeight ==
        FontWeight.w600) {
      return 600;
    } else if (postModel
            .textModel!.textObjList[selectedTextIndex!].fontWeight ==
        FontWeight.w700) {
      return 700;
    } else if (postModel
            .textModel!.textObjList[selectedTextIndex!].fontWeight ==
        FontWeight.w800) {
      return 800;
    } else if (postModel
            .textModel!.textObjList[selectedTextIndex!].fontWeight ==
        FontWeight.w900) {
      return 900;
    }
    return 600;
  }

  FontWeight setFontWeight(double updatedValue) {
    if (updatedValue <= 100) {
      return FontWeight.w100;
    } else if (updatedValue > 100 && updatedValue <= 200) {
      return FontWeight.w200;
    } else if (updatedValue > 200 && updatedValue <= 300) {
      return FontWeight.w300;
    } else if (updatedValue > 300 && updatedValue <= 400) {
      return FontWeight.w400;
    } else if (updatedValue > 400 && updatedValue <= 500) {
      return FontWeight.w500;
    } else if (updatedValue > 500 && updatedValue <= 600) {
      return FontWeight.w600;
    } else if (updatedValue > 600 && updatedValue <= 700) {
      return FontWeight.w700;
    } else if (updatedValue > 700 && updatedValue <= 800) {
      return FontWeight.w800;
    } else if (updatedValue > 800 && updatedValue <= 900) {
      return FontWeight.w900;
    }
    return FontWeight.w600;
  }
}
