import 'package:flutter/material.dart';
import 'package:flutter_food_app/Widget/app_column.dart';
import 'package:flutter_food_app/Widget/app_icon.dart';
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
      backgroundColor: Colors.white,
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
                  AppIcon(
                    icon: Icons.arrow_back_ios,
                    iconColor: AppColors.mainBlackColor,
                  ),
                  AppIcon(
                      icon: Icons.shopping_bag_outlined,
                      iconColor: AppColors.mainBlackColor),
                ],
              )),
          Positioned(
              left: 0,
              right: 0,
              top: Dimention.foodDetailsScreenHeight350 - Dimention.height45,
              bottom: 0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Chiness Side"),
                  SizedBox(
                    height: Dimention.height30,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        right: Dimention.width20, left: Dimention.width20),
                    child: BigText(
                      text: "Introduce",
                      color: Colors.black87,
                      fontWeight: FontWeight.normal,
                    ),
                  )
                ],
              ))
        ],
      ),
      // bottom navigation
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimention.height20*2),
            topRight: Radius.circular(Dimention.height20*2)
          )
        ),
        padding: EdgeInsets.only(
            left: Dimention.width20,
            right: Dimention.width20,
            top: Dimention.height30,
            bottom: Dimention.height30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // counter result
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimention.width20, vertical: Dimention.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimention.height20),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.remove),
                  SizedBox(width: Dimention.width10/2,),
                  BigText(text: "0"),
                  SizedBox(width: Dimention.width10/2,),
                  Icon(Icons.add)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Dimention.width20, vertical: Dimention.height20),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimention.height20),
              ),
              child: BigText(text: "\$10 | Add to cart",color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
