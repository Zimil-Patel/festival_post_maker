import 'package:festival_post_maker/utils/global%20lists/festivals_list.dart';
import 'package:festival_post_maker/utils/global%20lists/model_list.dart';
import 'package:festival_post_maker/utils/global%20lists/shadow_list.dart';
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/utils/global%20variables/methods.dart';
import 'package:festival_post_maker/utils/global%20variables/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostHistoryList extends StatelessWidget {
  const PostHistoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...List.generate(
          postList.length,
          (index) => CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              isFromHistory = true;
              //navigate with arguments
              navigateToEditTemplate(
                  context: context, postModel: postList[index]);
            },
            //box of festival name and image
            child: Container(
              height: 100,
              width: screenWidth,
              margin: EdgeInsets.only(
                  top: index == 0 ? 8 : 0,
                  bottom: index == festivalsList.length - 1 ? 14 : 0),
              alignment: Alignment.center,
              padding: const EdgeInsets.only(right: 0, left: 10),
              child: Stack(
                children: [
                  //category(festival) name
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      height: 70,
                      width: screenWidth,
                      decoration: BoxDecoration(
                        boxShadow: boxShadowList,
                        borderRadius: BorderRadius.circular(14),
                        gradient: gradientFromLeft,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 80, right: 0),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //festival Name
                                Text(
                                  'Post ${index + 1}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: primaryTextColor,
                                      ),
                                ),
                                Text(
                                  'Edit Your ${postList[index].festivalName} Template',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: Colors.grey),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Align(
                              alignment: Alignment.centerRight,
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: bgColor,
                              ),
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  //category(festival) image in circle
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: const EdgeInsets.all(6),
                      height: 90,
                      width: 90,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: primaryColor,
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(6),
                        height: 70,
                        width: 70,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.4),
                              blurRadius: 20,
                              spreadRadius: 2,
                            )
                          ],
                          shape: BoxShape.circle,
                          color: bgColor,
                        ),
                        child: Icon(
                          Icons.remove_red_eye_rounded,
                          color: primaryTextColor,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
