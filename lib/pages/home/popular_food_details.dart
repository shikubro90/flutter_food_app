import 'package:flutter/material.dart';
import 'package:flutter_food_app/Widget/app_Icon.dart';
import 'package:flutter_food_app/utils/dimentions.dart';

import '../../Widget/big_text.dart';
import '../../Widget/icon_and_text.dart';
import '../../Widget/small_text.dart';
import '../../utils/app_colors.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                height: Dimention.foodDetailsScreenHeight350,
                width: double.maxFinite,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/food-image3.jpg'))),
              )),
          Positioned(
              top: Dimention.height45,
              left: Dimention.width20,
              right: Dimention.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.shopping_bag_outlined),
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              top: Dimention.foodDetailsScreenHeight350 - Dimention.height45,
              bottom: 0,
              child: Container(
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
                          text: "Chinese Site",
                          color: AppColors.mainBlackColor,
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
                  )))
        ],
      ),
    );
  }
}
