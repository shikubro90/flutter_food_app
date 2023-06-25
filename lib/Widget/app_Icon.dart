import 'package:flutter/material.dart';
import 'package:flutter_food_app/utils/dimentions.dart';

class AppIcon extends StatelessWidget {

  AppIcon({super.key, required this.icon});

  final IconData icon;
  Color iconColor = Color(0xFF756df4);
  Color backgroundColor = Color(0xFFfcf4e4);
  double size = Dimention.height40;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(.8),
        borderRadius: BorderRadius.circular(size/2)
      ),
      child: Icon(
          icon,
          size: Dimention.iconSize16,
          color: iconColor,
      ),
    );
  }
}
