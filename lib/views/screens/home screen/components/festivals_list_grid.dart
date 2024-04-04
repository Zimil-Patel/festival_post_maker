import 'package:festival_post_maker/utils/global%20lists/festivals_list.dart';
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../models/post_model.dart';
import '../../../../models/text_model.dart';
import '../../../../utils/global lists/images_paths_list.dart';
import '../../../../utils/global lists/model_list.dart';
import '../../../../utils/global lists/shadow_list.dart';
import '../../../../utils/global variables/methods.dart';

class FestivalListGrid extends StatelessWidget {
  const FestivalListGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      maxCrossAxisExtent: 300,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        ...List.generate(
          festivalsList.length,
          (index) => CupertinoButton(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            onPressed: () {
              textList.add(sampleTextModel);

              //new text model object
              TextModel textModel = TextModel();
              textModel.refreshList();

              //new post model object
              PostModel postModel = PostModel(
                  festivalName: festivalsList[index],
                  bgColor: null,
                  gradient: null,
                  imgPath: '${imagePathList[index]}img1.png',
                  textModel: textModel);

              //clear global text list
              textList.clear();

              //navigate with arguments
              navigateToTemplateView(context: context, postModel: postModel);
            },
            child: SizedBox(
              height: 178,
              width: 300,
              child: Stack(
                children: [
                  //category(festival) name
                  festivalBottomBox(index, context),
                  //category(festival) image in circle
                  circleFestivalIcon(index),
                  //festival name over layers
                  nameOfFestival(index, context),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Align nameOfFestival(int index, BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 28.0),
        child: Text(
          festivalsList[index],
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: primaryTextColor,
              ),
        ),
      ),
    );
  }

  Align circleFestivalIcon(int index) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.all(6),
        height: 140,
        width: 140,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: primaryColor,
        ),
        child: Container(
          margin: const EdgeInsets.all(6),
          height: 100,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              boxShadow: boxShadowList,
              image: DecorationImage(
                scale: 10,
                //festival icon image
                image: AssetImage('assets/images/icons/img${index + 1}.png'),
              ),
              shape: BoxShape.circle,
              color: bgColor),
        ),
      ),
    );
  }

  Align festivalBottomBox(int index, BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 78,
        margin: const EdgeInsets.symmetric(horizontal: 4),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: primaryColor,
          boxShadow: boxShadowList,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 42,
            ),
            Text(
              'create your template',
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .copyWith(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
