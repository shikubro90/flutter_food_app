import 'package:flutter/material.dart';
import 'package:flutter_food_app/utils/dimentions.dart';

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
                decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                        image: AssetImage('assets/images/food-image3.jpg'))),
              )),
          Positioned(child: Row(
            children: [

            ],
          ))
        ],
      ),
    );
  }
}
