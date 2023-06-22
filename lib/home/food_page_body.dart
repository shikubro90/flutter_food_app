import 'package:flutter/material.dart';
import 'package:flutter_food_app/utils/app_colors.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: PageView.builder(
          itemCount: 5,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      height: 320,
      decoration: BoxDecoration(
          color: index.isEven ? AppColors.mainColor : Colors.blue,
          borderRadius: BorderRadius.circular(30)),
    );
  }
}
