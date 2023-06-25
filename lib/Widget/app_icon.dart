import 'package:flutter/material.dart';
import 'package:flutter_food_app/utils/dimentions.dart';

class AppIcon extends StatelessWidget {
  AppIcon(
      {super.key,
      required this.icon,
      this.size = 40,
      this.iconColor = const Color(0xFF756df4),
      this.backgroundColor = const Color(0xFFfcf4e4)});

  final IconData icon;
  Color iconColor;
  Color backgroundColor;
  double size = Dimention.height40;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          color: backgroundColor.withOpacity(.8),
          borderRadius: BorderRadius.circular(size / 2)),
      child: Icon(
        icon,
        size: Dimention.iconSize16,
        color: iconColor,
      ),
    );
  }
}
