import 'package:flutter/material.dart';
import 'package:flutter_food_app/utils/dimentions.dart';

class BigText extends StatelessWidget {
  BigText(
      {super.key,
      required this.text,
      this.color = const Color(0xFF89dad0),
      this.fontWeight,
      this.overflow = TextOverflow.ellipsis,
      this.isEllipsis = true,
      this.size = 20});

  final String text;
  final Color? color;
  TextOverflow overflow;
  double size;
  final FontWeight? fontWeight;
  bool isEllipsis;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: isEllipsis? overflow: null,
      style: TextStyle(
          color: color,
          fontSize: size,
          fontWeight: fontWeight ?? FontWeight.w400,
          fontFamily: 'Roboto'),
    );
  }
}
