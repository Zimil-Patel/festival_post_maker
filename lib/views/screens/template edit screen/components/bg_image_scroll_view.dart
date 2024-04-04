import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../models/post_model.dart';
import '../../../../utils/global variables/variables.dart';

class BackGroundImageScrollView extends StatelessWidget {
  const BackGroundImageScrollView({
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
          ...List.generate(
            isBlankTemplate ? 15 : 10,
                (index) => CupertinoButton(
              onPressed: () {
                postModel.imgPath = isBlankTemplate
                    ? 'assets/images/predefined/img${index + 1}.png'
                    : 'assets/images/festivals/${(postModel.festivalName)!.toLowerCase()}/img${index + 1}.png';
                postModel.bgColor = Colors.transparent;
                toggleState();
              },
              padding: EdgeInsets.zero,
              child: Container(
                height: 70,
                width: 70,
                margin: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(isBlankTemplate
                        ? 'assets/images/predefined/img${index + 1}.png'
                        : 'assets/images/festivals/${(postModel.festivalName)!.toLowerCase()}/img${index + 1}.png'),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
