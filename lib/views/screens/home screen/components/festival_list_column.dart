import 'package:festival_post_maker/utils/global%20lists/festivals_list.dart';
import 'package:festival_post_maker/utils/global%20variables/colors.dart';
import 'package:festival_post_maker/utils/global%20variables/variables.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FestivalListColumn extends StatelessWidget {
  const FestivalListColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...List.generate(
            festivalsList.length,
            (index) => CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () {},
              //box of festival name and image
              child: Container(
                height: 100,
                width: screenWidth,
                margin: EdgeInsets.only(
                    top: index == 0 ? 14 : 0,
                    bottom: index == festivalsList.length - 1 ? 14 : 0),
                alignment: Alignment.center,
                padding: EdgeInsets.only(
                    right: index % 2 == 0 ? 10 : 0,
                    left: index % 2 == 0 ? 0 : 10),
                child: Stack(
                  children: [
                    //category(festival) name
                    Align(
                      alignment: index % 2 == 0
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        height: 70,
                        width: screenWidth,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 5,
                              spreadRadius: 1,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(14),
                          gradient: index % 2 == 0
                              ? gradientFromRight
                              : gradientFromLeft,
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: index % 2 != 0 ? 80 : 0,
                              right: index % 2 == 0 ? 80 : 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: index % 2 == 0
                                ? CrossAxisAlignment.end
                                : CrossAxisAlignment.start,
                            children: [
                              //festival Name
                              Text(
                                festivalsList[index],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge!
                                    .copyWith(
                                      color: primaryTextColor,
                                    ),
                              ),
                              Text(
                                'Create Your ${festivalsList[index]} Template',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //category(festival) image in circle
                    Align(
                      alignment: index % 2 == 0
                          ? Alignment.centerRight
                          : Alignment.centerLeft,
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
                              image: DecorationImage(
                                scale: 10,
                                //festival icon image
                                image: AssetImage(
                                    'assets/images/icons/img${index + 1}.png'),
                              ),
                              shape: BoxShape.circle,
                              color: bgColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
