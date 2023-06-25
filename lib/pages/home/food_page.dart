import 'package:flutter/material.dart';
import 'package:flutter_food_app/Widget/big_text.dart';
import 'package:flutter_food_app/Widget/small_text.dart';
import 'package:flutter_food_app/utils/app_colors.dart';
import 'package:flutter_food_app/utils/dimentions.dart';

import 'food_page_body.dart';

class FoodHomePage extends StatefulWidget {
  const FoodHomePage({super.key});

  @override
  State<FoodHomePage> createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // showing the header
          Container(
            margin: EdgeInsets.only(top: Dimention.headerMargin, bottom: 15),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(text: "Bangladesh", color: AppColors.mainColor, size: 25,),
                  Row(
                    children: [
                      SmallText(text: "Dhaka", color: Colors.black45, size: 15,),
                      Icon(Icons.arrow_drop_down_rounded)
                    ],
                  )
                  ],
                ),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimention.borderRadius15),
                    color: AppColors.mainColor,
                  ),
                  child: Icon(Icons.search, size: 20, color: Colors.white,),
                )
              ],
            ),
          ),
          // showing the body
          Expanded(child: SingleChildScrollView(
            child: FoodPageBody(),
          ))
        ],
      ),
    );
  }
}
