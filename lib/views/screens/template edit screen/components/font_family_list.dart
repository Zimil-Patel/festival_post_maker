import 'package:festival_post_maker/utils/global%20lists/font_family_list.dart';
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../models/post_model.dart';
import '../../../../utils/global variables/variables.dart';

class FontFamilyList extends StatelessWidget {
  const FontFamilyList({
    super.key,
    required this.postModel,
    required this.toggleState,
  });

  final PostModel postModel;
  final VoidCallback toggleState;

  @override
  Widget build(BuildContext context) {
    return ListWheelScrollView(
      itemExtent: 35,
      children: List.generate(
        fontFamilyList.length,
        (index) => CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            if (selectedTextIndex != null) {
              postModel.textModel!.textObjList[selectedTextIndex!].fontFamily =
                  fontFamilyList[index];
            }
            toggleState();
          },
          child: Container(
            height: 60,
            alignment: Alignment.center,
            margin: const EdgeInsets.all(2),
            width: screenWidth,
            decoration: BoxDecoration(
              color: primaryColor,
            ),
            child: Text(
              fontFamilyList[index],
              style: GoogleFonts.getFont(
                fontFamilyList[index],
                textStyle: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
