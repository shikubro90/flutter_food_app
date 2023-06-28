import 'package:flutter/material.dart';
import 'package:flutter_food_app/Widget/small_text.dart';

import '../utils/app_colors.dart';
import '../utils/dimentions.dart';
import 'big_text.dart';
import 'icon_and_text.dart';

class AppColumn extends StatelessWidget {

  final String text;

  const AppColumn({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:
          BorderRadius.only(
              topLeft: Radius.circular(Dimention.height20),
              topRight: Radius.circular(Dimention.height20)
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(
              left: Dimention.width15,
              right: Dimention.width15,
              top: Dimention.height15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BigText(
                text: text,
                color: AppColors.mainBlackColor,
                size: Dimention.fontSize26,
              ),
              SizedBox(
                height: Dimention.height5,
              ),
              Row(
                children: [
                  Wrap(
                    children: List.generate(
                        4,
                            (index) => Icon(
                          Icons.star_sharp,
                          color: AppColors.mainColor,
                          size: 20,
                        )),
                  ),
                  SizedBox(
                    width: Dimention.width10,
                  ),
                  SmallText(text: "4.5"),
                  SizedBox(
                    width: Dimention.width10,
                  ),
                  SmallText(text: "1287"),
                  SizedBox(
                    width: Dimention.width10,
                  ),
                  SmallText(text: "comments")
                ],
              ),
              SizedBox(
                height: Dimention.height10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconAndText(
                      iconData: Icons.circle_sharp,
                      text: "Normal",
                      iconColor: Colors.orange,
                      textColor: AppColors.mainBlackColor),
                  SizedBox(
                    width: Dimention.width10,
                  ),
                  IconAndText(
                      iconData: Icons.location_on,
                      text: "1.7km",
                      iconColor: AppColors.mainColor,
                      textColor: AppColors.mainBlackColor),
                  SizedBox(
                    width: Dimention.width10,
                  ),
                  IconAndText(
                      iconData: Icons.access_alarm_rounded,
                      text: "32 min",
                      iconColor: AppColors.iconColor2,
                      textColor: AppColors.mainBlackColor)
                ],
              )
            ],
          ),
        ));
  }
}
